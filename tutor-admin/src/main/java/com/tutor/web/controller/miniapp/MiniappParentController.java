package com.tutor.web.controller.miniapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.tutor.common.core.controller.BaseController;
import com.tutor.common.core.domain.AjaxResult;
import com.tutor.common.utils.SecurityUtils;
import com.tutor.system.domain.TParentInfo;
import com.tutor.system.service.ITParentInfoService;
import com.tutor.system.domain.TWxUser;
import com.tutor.system.service.ITWxUserService;
import com.tutor.system.domain.TStudentInfo;
import com.tutor.system.service.ITStudentInfoService;
import com.tutor.system.domain.TTutorInfo;
import com.tutor.system.service.ITTutorInfoService;
import java.util.List;

/**
 * 小程序家长信息Controller
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-06
 */
@RestController
@RequestMapping("/miniapp/parent")
public class MiniappParentController extends BaseController
{
    @Autowired
    private ITParentInfoService parentInfoService;

    @Autowired
    private ITWxUserService wxUserService;

    @Autowired
    private ITStudentInfoService studentInfoService;


    @Autowired
    private ITTutorInfoService tutorInfoService;

    /**
     * 新增家长信息
     */
    @PostMapping("/add")
    public AjaxResult add(@Validated @RequestBody TParentInfo parentInfo)
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

            // 设置openid
            parentInfo.setOpenid(wxUser.getOpenid());

            // 设置创建信息
            parentInfo.setCreateBy(wxUser.getOpenid());

            // 生成家长编号（可以根据业务规则生成）
            String parentNo = "P" + System.currentTimeMillis();
            parentInfo.setParentNo(parentNo);

            // 设置状态
            if (parentInfo.getStatus() == null)
            {
                parentInfo.setStatus("0"); // 正常
            }

            parentInfo.setDelFlag("0"); // 未删除

            int result = parentInfoService.insertTParentInfo(parentInfo);

            if (result > 0)
            {
                // 更新微信用户的userType和parentId
                wxUser.setUserType("parent");
                wxUser.setParentId(parentInfo.getParentId());
                wxUserService.updateUser(wxUser);

                logger.info("家长入驻成功 - 家长ID: {}, 押金金额: {}, 交易单号: {}",
                    parentInfo.getParentId(), parentInfo.getDepositAmount(), parentInfo.getDepositTransactionId());

                return success("添加成功");
            }
            else
            {
                return error("添加失败");
            }
        }
        catch (Exception e)
        {
            logger.error("添加家长信息失败：{}", e.getMessage());
            return error("添加失败：" + e.getMessage());
        }
    }

    /**
     * 获取家长信息
     */
    @GetMapping("/info")
    public AjaxResult getInfo()
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("家长信息不存在");
            }

            TParentInfo parentInfo = parentInfoService.selectTParentInfoByParentId(wxUser.getParentId());
            return success(parentInfo);
        }
        catch (Exception e)
        {
            logger.error("获取家长信息失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 更新家长信息
     */
    @PostMapping("/update")
    public AjaxResult update(@Validated @RequestBody TParentInfo parentInfo)
    {
        try
        {
            // 获取当前登录用户
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("用户不存在或未绑定家长信息");
            }

            // 设置家长ID
            parentInfo.setParentId(wxUser.getParentId());

            // 设置更新信息
            parentInfo.setUpdateBy(wxUser.getOpenid());

            int result = parentInfoService.updateTParentInfo(parentInfo);

            if (result > 0)
            {
                return success("更新成功");
            }
            else
            {
                return error("更新失败");
            }
        }
        catch (Exception e)
        {
            logger.error("更新家长信息失败：{}", e.getMessage());
            return error("更新失败：" + e.getMessage());
        }
    }

    /**
     * 获取子女列表
     */
    @GetMapping("/children/list")
    public AjaxResult getChildrenList()
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("家长信息不存在");
            }

            TStudentInfo query = new TStudentInfo();
            query.setParentId(wxUser.getParentId());
            List<TStudentInfo> list = studentInfoService.selectTStudentInfoList(query);

            return success(list);
        }
        catch (Exception e)
        {
            logger.error("获取子女列表失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 获取子女详情
     */
    @GetMapping("/children/{studentId}")
    public AjaxResult getChildDetail(@PathVariable Long studentId)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("家长信息不存在");
            }

            TStudentInfo studentInfo = studentInfoService.selectTStudentInfoByStudentId(studentId);

            if (studentInfo == null)
            {
                return error("子女信息不存在");
            }

            // 验证是否是当前家长的子女
            if (!studentInfo.getParentId().equals(wxUser.getParentId()))
            {
                return error("无权访问");
            }

            return success(studentInfo);
        }
        catch (Exception e)
        {
            logger.error("获取子女详情失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 新增子女信息
     */
    @PostMapping("/children/add")
    public AjaxResult addChild(@RequestBody TStudentInfo studentInfo)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("家长信息不存在");
            }

            // 获取家长信息
            TParentInfo parentInfo = parentInfoService.selectTParentInfoByParentId(wxUser.getParentId());
            if (parentInfo == null)
            {
                return error("家长信息不存在");
            }

            // 设置家长ID
            studentInfo.setParentId(wxUser.getParentId());

            // 生成学生编号（家长编号+序号）
            TStudentInfo query = new TStudentInfo();
            query.setParentId(wxUser.getParentId());
            int count = studentInfoService.selectTStudentInfoList(query).size();
            String studentNo = parentInfo.getParentNo() + (count + 1);
            studentInfo.setStudentNo(studentNo);

            // 设置创建信息
            studentInfo.setCreateBy(wxUser.getOpenid());

            // 设置状态
            if (studentInfo.getStatus() == null)
            {
                studentInfo.setStatus("0"); // 正常
            }

            studentInfo.setDelFlag("0"); // 未删除

            int result = studentInfoService.insertTStudentInfo(studentInfo);

            if (result > 0)
            {
                return success("添加成功");
            }
            else
            {
                return error("添加失败");
            }
        }
        catch (Exception e)
        {
            logger.error("添加子女信息失败：{}", e.getMessage());
            return error("添加失败：" + e.getMessage());
        }
    }

    /**
     * 更新子女信息
     */
    @PostMapping("/children/update")
    public AjaxResult updateChild(@RequestBody TStudentInfo studentInfo)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("家长信息不存在");
            }

            // 验证是否是当前家长的子女
            TStudentInfo existStudent = studentInfoService.selectTStudentInfoByStudentId(studentInfo.getStudentId());
            if (existStudent == null)
            {
                return error("子女信息不存在");
            }

            if (!existStudent.getParentId().equals(wxUser.getParentId()))
            {
                return error("无权修改");
            }

            // 设置更新信息
            studentInfo.setUpdateBy(wxUser.getOpenid());

            int result = studentInfoService.updateTStudentInfo(studentInfo);

            if (result > 0)
            {
                return success("更新成功");
            }
            else
            {
                return error("更新失败");
            }
        }
        catch (Exception e)
        {
            logger.error("更新子女信息失败：{}", e.getMessage());
            return error("更新失败：" + e.getMessage());
        }
    }

    /**
     * 删除子女信息
     */
    @PostMapping("/children/delete")
    public AjaxResult deleteChild(@RequestBody TStudentInfo studentInfo)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null || wxUser.getParentId() == null)
            {
                return error("家长信息不存在");
            }

            // 验证是否是当前家长的子女
            TStudentInfo existStudent = studentInfoService.selectTStudentInfoByStudentId(studentInfo.getStudentId());
            if (existStudent == null)
            {
                return error("子女信息不存在");
            }

            if (!existStudent.getParentId().equals(wxUser.getParentId()))
            {
                return error("无权删除");
            }

            // 逻辑删除
            int result = studentInfoService.deleteTStudentInfoByStudentId(studentInfo.getStudentId());

            if (result > 0)
            {
                return success("删除成功");
            }
            else
            {
                return error("删除失败");
            }
        }
        catch (Exception e)
        {
            logger.error("删除子女信息失败：{}", e.getMessage());
            return error("删除失败：" + e.getMessage());
        }
    }

    /**
     * 获取推荐老师列表
     * @param type 推荐类型：nearby-附近老师，excellent-优秀老师
     * @param latitude 用户纬度（附近老师推荐时必传）
     * @param longitude 用户经度（附近老师推荐时必传）
     * @param pageNum 页码
     * @param pageSize 每页数量
     */
    @GetMapping("/recommend/tutors")
    public AjaxResult getRecommendTutors(
            @RequestParam String type,
            @RequestParam(required = false) Double latitude,
            @RequestParam(required = false) Double longitude,
            @RequestParam(defaultValue = "1") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize)
    {
        try
        {
            if ("nearby".equals(type))
            {
                // 附近老师推荐
                if (latitude == null || longitude == null)
                {
                    return error("请提供位置信息");
                }

                // 使用service获取附近老师列表
                List<TTutorInfo> list = tutorInfoService.selectNearbyTutors(latitude, longitude, pageNum, pageSize);
                return success(list);
            }
            else if ("excellent".equals(type))
            {
                // 优秀老师推荐（按点赞数排序）
                List<TTutorInfo> list = tutorInfoService.selectExcellentTutors(pageNum, pageSize);
                return success(list);
            }
            else
            {
                return error("推荐类型错误");
            }
        }
        catch (Exception e)
        {
            logger.error("获取推荐老师列表失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }
}
