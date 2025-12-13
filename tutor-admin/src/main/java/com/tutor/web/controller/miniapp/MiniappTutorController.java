package com.tutor.web.controller.miniapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.tutor.common.core.controller.BaseController;
import com.tutor.common.core.domain.AjaxResult;
import com.tutor.common.utils.SecurityUtils;
import com.tutor.system.domain.TTutorInfo;
import com.tutor.system.service.ITTutorInfoService;
import com.tutor.system.domain.TWxUser;
import com.tutor.system.service.ITWxUserService;
import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;
import java.util.Comparator;

/**
 * 小程序家教信息Controller
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-06
 */
@RestController
@RequestMapping("/miniapp/tutor")
public class MiniappTutorController extends BaseController
{
    @Autowired
    private ITTutorInfoService tutorInfoService;

    @Autowired
    private ITWxUserService wxUserService;

    /**
     * 新增或更新家教信息
     */
    @PostMapping("/add")
    public AjaxResult add(@RequestBody TTutorInfo tutorInfo)
    {
        try
        {
            // 获取当前登录用户
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null)
            {
                return error("用户不存在");
            }

            // 判断是新增还是更新
            boolean isUpdate = tutorInfo.getTutorId() != null && tutorInfo.getTutorId() > 0;
            
            if (isUpdate)
            {
                // 更新操作
                // 验证该家教信息是否属于当前用户
                TTutorInfo existingTutor = tutorInfoService.selectTTutorInfoByTutorId(tutorInfo.getTutorId());
                if (existingTutor == null)
                {
                    return error("家教信息不存在");
                }
                if (!existingTutor.getOpenid().equals(wxUser.getOpenid()))
                {
                    return error("无权修改此家教信息");
                }
                
                // 设置更新信息
                tutorInfo.setUpdateBy(wxUser.getOpenid());
                
                // 保留原有的一些字段（不允许修改）
                tutorInfo.setTutorNo(existingTutor.getTutorNo());
                tutorInfo.setOpenid(existingTutor.getOpenid());
                tutorInfo.setCreateBy(existingTutor.getCreateBy());
                tutorInfo.setCreateTime(existingTutor.getCreateTime());
                
                // 如果是修改信息，重新提交审核（如果之前审核通过或拒绝）
                if ("1".equals(existingTutor.getAuditStatus()) || "2".equals(existingTutor.getAuditStatus()))
                {
                    tutorInfo.setAuditStatus("0"); // 重新提交审核
                    tutorInfo.setAuditRemark(null); // 清空审核备注
                }
                
                int result = tutorInfoService.updateTTutorInfo(tutorInfo);
                
                if (result > 0)
                {
                    return success("更新成功，请等待审核");
                }
                else
                {
                    return error("更新失败");
                }
            }
            else
            {

                // 设置openid
                tutorInfo.setOpenid(wxUser.getOpenid());

                // 设置创建信息
                tutorInfo.setCreateBy(wxUser.getOpenid());

                // 生成家教编号（可以根据业务规则生成）
                String tutorNo = "T" + System.currentTimeMillis();
                tutorInfo.setTutorNo(tutorNo);

                // 设置状态
                if (tutorInfo.getStatus() == null)
                {
                    tutorInfo.setStatus("0"); // 正常
                }

                // 设置审核状态
                if (tutorInfo.getAuditStatus() == null)
                {
                    tutorInfo.setAuditStatus("0"); // 待审核
                }

                tutorInfo.setDelFlag("0"); // 未删除

                // 初始化统计字段
                if (tutorInfo.getServiceCount() == null)
                {
                    tutorInfo.setServiceCount(0);
                }
                if (tutorInfo.getPoints() == null)
                {
                    tutorInfo.setPoints(0);
                }

                int result = tutorInfoService.insertTTutorInfo(tutorInfo);

                if (result > 0)
                {
                    // 更新微信用户的userType和tutorId
                    wxUser.setUserType("teacher");
                    wxUser.setTutorId(tutorInfo.getTutorId());
                    wxUserService.updateUser(wxUser);

                    logger.info("家教入驻成功 - 家教ID: {}, 押金金额: {}, 交易单号: {}",
                        tutorInfo.getTutorId(), tutorInfo.getDepositAmount(), tutorInfo.getDepositTransactionId());

                    return success("提交成功，请等待审核");
                }
                else
                {
                    return error("提交失败");
                }
            }
        }
        catch (Exception e)
        {
            logger.error("添加/更新家教信息失败：{}", e.getMessage());
            return error("提交失败：" + e.getMessage());
        }
    }

    /**
     * 获取家教信息
     */
    @GetMapping("/info")
    public AjaxResult getInfo()
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null)
            {
                return error("用户不存在");
            }

            // 如果用户还没有入驻数据，返回成功但data为null（第一次进入的情况）
            if (wxUser.getTutorId() == null)
            {
                return success(null);
            }

            TTutorInfo tutorInfo = tutorInfoService.selectTTutorInfoByTutorId(wxUser.getTutorId());

            // 如果记录已被删除（del_flag != 0），返回null
            if (tutorInfo != null && !"0".equals(tutorInfo.getDelFlag()))
            {
                // 同时清空wxUser中的tutorId，保持数据一致性
                wxUser.setTutorId(null);
                wxUser.setUserType(null);
                wxUserService.updateUser(wxUser);

                return success(null);
            }

            return success(tutorInfo);
        }
        catch (Exception e)
        {
            logger.error("获取家教信息失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 获取家教详情（小程序端公开访问）
     * @param tutorId 家教ID
     */
    @GetMapping("/detail/{tutorId}")
    public AjaxResult getDetail(@PathVariable Long tutorId)
    {
        try
        {
            TTutorInfo tutorInfo = tutorInfoService.selectTTutorInfoByTutorId(tutorId);

            if (tutorInfo == null)
            {
                return error("家教信息不存在");
            }

            // 只返回审核通过且正常状态的家教信息
            if (!"1".equals(tutorInfo.getAuditStatus()) || !"0".equals(tutorInfo.getStatus()))
            {
                return error("该家教信息暂不可用");
            }

            return success(tutorInfo);
        }
        catch (Exception e)
        {
            logger.error("获取家教详情失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 获取所有审核通过的家教列表（支持筛选和排序）
     * @param gradeId 年级ID筛选（可选）
     * @param subject 科目筛选（可选）
     * @param constellation 星座筛选（可选）
     * @param sortBy 排序方式：distance-距离，score-评分（可选）
     * @param latitude 用户纬度（排序方式为distance时必填）
     * @param longitude 用户经度（排序方式为distance时必填）
     */
    @GetMapping("/list")
    public AjaxResult getTutorList(
            @RequestParam(required = false) Long gradeId,
            @RequestParam(required = false) String subject,
            @RequestParam(required = false) String constellation,
            @RequestParam(required = false) String sortBy,
            @RequestParam(required = false) Double latitude,
            @RequestParam(required = false) Double longitude)
    {
        try
        {
            // 查询所有审核通过且正常状态的家教
            TTutorInfo query = new TTutorInfo();
            query.setAuditStatus("1"); // 审核通过
            query.setStatus("0"); // 正常状态

            List<TTutorInfo> tutorList = tutorInfoService.selectTTutorInfoList(query);

            // 年级筛选
            if (gradeId != null)
            {
                final String searchGradeId = String.valueOf(gradeId);
                tutorList = tutorList.stream()
                    .filter(t -> {
                        // 检查家教的可辅导年级ID列表是否包含目标年级ID
                        String tutorableGradeIds = t.getTutorableGradeIds();
                        if (tutorableGradeIds == null || tutorableGradeIds.trim().isEmpty())
                        {
                            return false;
                        }
                        // 分割年级ID列表并检查是否包含目标年级ID
                        String[] gradeIds = tutorableGradeIds.split(",");
                        for (String id : gradeIds)
                        {
                            if (searchGradeId.equals(id.trim()))
                            {
                                return true;
                            }
                        }
                        return false;
                    })
                    .collect(Collectors.toList());
            }

            // 科目筛选
            if (subject != null && !subject.trim().isEmpty())
            {
                final String searchSubject = subject.trim();
                tutorList = tutorList.stream()
                    .filter(t -> t.getSubjectNames() != null && t.getSubjectNames().contains(searchSubject))
                    .collect(Collectors.toList());
            }

            // 星座筛选
            if (constellation != null && !constellation.trim().isEmpty())
            {
                final String searchConstellation = constellation.trim();
                tutorList = tutorList.stream()
                    .filter(t -> searchConstellation.equals(t.getConstellation()))
                    .collect(Collectors.toList());
            }

            // 计算距离并排序
            if ("distance".equals(sortBy) && latitude != null && longitude != null)
            {
                // 为每个家教计算距离
                for (TTutorInfo tutor : tutorList)
                {
                    if (tutor.getLatitude() != null && tutor.getLongitude() != null)
                    {
                        double distance = calculateDistance(
                            latitude,
                            longitude,
                            tutor.getLatitude().doubleValue(),
                            tutor.getLongitude().doubleValue()
                        );
                        // 将距离设置到备注字段中，前端会解析
                        tutor.setRemark(String.format("%.2f", distance));
                    }
                }

                // 按距离排序（距离近的在前）
                tutorList = tutorList.stream()
                    .sorted(Comparator.comparing(t -> {
                        if (t.getRemark() != null)
                        {
                            try
                            {
                                return Double.parseDouble(t.getRemark());
                            }
                            catch (NumberFormatException e)
                            {
                                return Double.MAX_VALUE;
                            }
                        }
                        return Double.MAX_VALUE;
                    }))
                    .collect(Collectors.toList());
            }
            else if ("score".equals(sortBy))
            {
                // 按评分排序（评分高的在前）
                tutorList = tutorList.stream()
                    .sorted((t1, t2) -> {
                        BigDecimal score1 = t1.getAvgScore() != null ? t1.getAvgScore() : BigDecimal.ZERO;
                        BigDecimal score2 = t2.getAvgScore() != null ? t2.getAvgScore() : BigDecimal.ZERO;
                        return score2.compareTo(score1);
                    })
                    .collect(Collectors.toList());
            }

            return success(tutorList);
        }
        catch (Exception e)
        {
            logger.error("获取家教列表失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 计算两个坐标之间的距离（单位：公里）
     * 使用Haversine公式
     */
    private double calculateDistance(double lat1, double lon1, double lat2, double lon2)
    {
        final double R = 6371; // 地球半径（公里）

        double latDistance = Math.toRadians(lat2 - lat1);
        double lonDistance = Math.toRadians(lon2 - lon1);

        double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
                + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        return R * c;
    }
}
