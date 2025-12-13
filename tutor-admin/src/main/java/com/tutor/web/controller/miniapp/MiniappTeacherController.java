package com.tutor.web.controller.miniapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.tutor.common.core.controller.BaseController;
import com.tutor.common.core.domain.AjaxResult;
import com.tutor.system.service.ITTutorInfoService;
import com.tutor.system.service.ITWxUserService;
import com.tutor.system.domain.TTutorInfo;
import com.tutor.system.domain.TWxUser;
import com.tutor.common.utils.SecurityUtils;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**
 * 小程序教师端Controller
 *
 * @author tutor
 * @date 2025-11-06
 */
@RestController
@RequestMapping("/miniapp/teacher")
public class MiniappTeacherController extends BaseController
{
    @Autowired
    private ITTutorInfoService tutorInfoService;

    @Autowired
    private ITWxUserService wxUserService;

    /**
     * 提交入驻申请
     */
    @PostMapping("/apply")
    public AjaxResult submitApply(@RequestBody TTutorInfo tutorInfo)
    {
        try
        {
            // 获取当前登录用户的openid
            String openid = SecurityUtils.getUsername();
            tutorInfo.setOpenid(openid);

            // 检查是否已有入驻信息
            TTutorInfo existingInfo = null;
            try
            {
                existingInfo = tutorInfoService.selectTTutorInfoByOpenid(openid);
            }
            catch (Exception e)
            {
                // 如果查询出现异常（比如有多条记录），则通过列表查询获取最新的一条
                logger.warn("根据openid查询家教信息异常，尝试列表查询：{}", e.getMessage());
                TTutorInfo query = new TTutorInfo();
                query.setOpenid(openid);
                query.setDelFlag("0");
                List<TTutorInfo> list = tutorInfoService.selectTTutorInfoList(query);
                if (list != null && !list.isEmpty())
                {
                    // 按创建时间降序排序，取最新的一条
                    existingInfo = list.stream()
                        .sorted((a, b) -> b.getCreateTime().compareTo(a.getCreateTime()))
                        .findFirst()
                        .orElse(null);
                }
            }

            int result;
            if (existingInfo != null)
            {
                // 更新已有信息
                tutorInfo.setTutorId(existingInfo.getTutorId());
                tutorInfo.setTutorNo(existingInfo.getTutorNo()); // 保留原有编号

                // 更新信息时，无论之前的审核状态是什么，都重新提交审核
                tutorInfo.setAuditStatus("0"); // 重新待审核
                tutorInfo.setAuditRemark(null); // 清空审核备注

                result = tutorInfoService.updateTTutorInfo(tutorInfo);
            }
            else
            {
                // 新增入驻信息
                tutorInfo.setStatus("0"); // 正常状态
                tutorInfo.setAuditStatus("0"); // 待审核
                tutorInfo.setServiceCount(0);
                tutorInfo.setPoints(0);

                result = tutorInfoService.insertTTutorInfo(tutorInfo);
            }

            if (result > 0)
            {
                return success(existingInfo != null ? "更新成功" : "提交成功，请等待审核");
            }
            else
            {
                return error("提交失败，请稍后重试");
            }
        }
        catch (Exception e)
        {
            logger.error("提交入驻申请失败：{}", e.getMessage());
            return error("提交失败：" + e.getMessage());
        }
    }

    /**
     * 查询当前用户的家教信息
     */
    @GetMapping("/my-info")
    public AjaxResult getMyInfo()
    {
        try
        {
            String openid = SecurityUtils.getUsername();
            TTutorInfo tutorInfo = null;

            try
            {
                tutorInfo = tutorInfoService.selectTTutorInfoByOpenid(openid);
            }
            catch (Exception e)
            {
                // 如果查询出现异常（比如有多条记录），则通过列表查询获取最新的一条
                logger.warn("根据openid查询家教信息异常，尝试列表查询：{}", e.getMessage());
                TTutorInfo query = new TTutorInfo();
                query.setOpenid(openid);
                query.setDelFlag("0");
                List<TTutorInfo> list = tutorInfoService.selectTTutorInfoList(query);
                if (list != null && !list.isEmpty())
                {
                    // 按创建时间降序排序，取最新的一条
                    tutorInfo = list.stream()
                        .sorted((a, b) -> b.getCreateTime().compareTo(a.getCreateTime()))
                        .findFirst()
                        .orElse(null);
                }
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
     * 退出入驻
     */
    @PostMapping("/withdraw")
    public AjaxResult withdraw()
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null)
            {
                return error("用户不存在");
            }

            // 检查是否有入驻信息
            if (wxUser.getTutorId() == null)
            {
                return error("您尚未入驻");
            }

            // 删除教师信息
            int result = tutorInfoService.deleteTTutorInfoByTutorId(wxUser.getTutorId());

            if (result > 0)
            {
                // 清空微信用户表中的教师关联信息
                wxUser.setTutorId(null);
                wxUser.setUserType(null);
                wxUserService.updateUser(wxUser);

                return success("退出入驻成功");
            }
            else
            {
                return error("退出失败，请稍后重试");
            }
        }
        catch (Exception e)
        {
            logger.error("退出入驻失败：{}", e.getMessage());
            return error("退出失败：" + e.getMessage());
        }
    }
}

