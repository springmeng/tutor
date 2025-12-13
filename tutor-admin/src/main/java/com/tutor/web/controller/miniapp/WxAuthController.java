package com.tutor.web.controller.miniapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.tutor.common.core.controller.BaseController;
import com.tutor.common.core.domain.AjaxResult;
import com.tutor.system.domain.TWxUser;
import com.tutor.system.domain.TParentInfo;
import com.tutor.system.domain.TTutorInfo;
import com.tutor.system.service.ITWxUserService;
import com.tutor.system.mapper.TParentInfoMapper;
import com.tutor.system.mapper.TTutorInfoMapper;
import com.tutor.framework.web.service.TokenService;
import com.tutor.common.utils.SecurityUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 微信小程序登录Controller
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-06
 */
@RestController
@RequestMapping("/miniapp/auth")
public class WxAuthController extends BaseController
{
    @Autowired
    private ITWxUserService wxUserService;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private TParentInfoMapper parentInfoMapper;

    @Autowired
    private TTutorInfoMapper tutorInfoMapper;

    /**
     * 微信小程序登录
     */
    @PostMapping("/wxLogin")
    public AjaxResult wxLogin(@RequestBody Map<String, String> params)
    {
        String code = params.get("code");
        if (code == null || code.isEmpty())
        {
            return error("登录凭证不能为空");
        }

        try
        {
            String token = wxUserService.wxLogin(code);
            Map<String, Object> result = new HashMap<>();
            result.put("token", token);
            return success(result);
        }
        catch (Exception e)
        {
            logger.error("微信登录失败：{}", e.getMessage());
            return error("登录失败：" + e.getMessage());
        }
    }

    /**
     * 获取当前登录用户信息
     */
    @GetMapping("/getUserInfo")
    public AjaxResult getUserInfo()
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            TWxUser user = wxUserService.getUserById(userId);
            if (user == null)
            {
                return error("用户不存在");
            }

            // 构建返回数据
            Map<String, Object> result = new HashMap<>();
            result.put("userId", user.getUserId());
            result.put("openid", user.getOpenid());
            result.put("nickname", user.getNickname());
            result.put("avatar", user.getAvatar());
            result.put("gender", user.getGender());
            result.put("phone", user.getPhone());
            result.put("userType", user.getUserType());
            result.put("parentId", user.getParentId());
            result.put("tutorId", user.getTutorId());
            result.put("points", user.getPoints());
            result.put("avgRating", user.getAvgRating());
            result.put("totalEvaluations", user.getTotalEvaluations());

            // 如果用户有家教ID，查询家教信息（包含审核状态）
            if (user.getTutorId() != null)
            {
                TTutorInfo tutorInfo = tutorInfoMapper.selectTTutorInfoByTutorId(user.getTutorId());
                if (tutorInfo != null)
                {
                    Map<String, Object> tutorData = new HashMap<>();
                    tutorData.put("tutorId", tutorInfo.getTutorId());
                    tutorData.put("tutorNo", tutorInfo.getTutorNo());
                    tutorData.put("tutorName", tutorInfo.getTutorName());
                    tutorData.put("auditStatus", tutorInfo.getAuditStatus());
                    tutorData.put("auditRemark", tutorInfo.getAuditRemark());
                    result.put("tutor", tutorData);
                }
            }

            // 如果用户有家长ID，查询家长信息
            if (user.getParentId() != null)
            {
                TParentInfo parentInfo = parentInfoMapper.selectTParentInfoByParentId(user.getParentId());
                if (parentInfo != null)
                {
                    Map<String, Object> parentData = new HashMap<>();
                    parentData.put("parentId", parentInfo.getParentId());
                    parentData.put("parentNo", parentInfo.getParentNo());
                    parentData.put("parentName", parentInfo.getParentName());
                    result.put("parent", parentData);
                }
            }

            return success(result);
        }
        catch (Exception e)
        {
            logger.error("获取用户信息失败：{}", e.getMessage());
            return error("获取用户信息失败");
        }
    }

    /**
     * 更新用户信息
     */
    @PostMapping("/updateUserInfo")
    public AjaxResult updateUserInfo(@RequestBody TWxUser wxUser)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            wxUser.setUserId(userId);
            wxUserService.updateUser(wxUser);
            return success("更新成功");
        }
        catch (Exception e)
        {
            logger.error("更新用户信息失败：{}", e.getMessage());
            return error("更新失败");
        }
    }

    /**
     * 更新用户头像
     */
    @PostMapping("/updateAvatar")
    public AjaxResult updateAvatar(@RequestBody Map<String, String> params)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            String avatar = params.get("avatar");

            if (avatar == null || avatar.isEmpty())
            {
                return error("头像不能为空");
            }

            // 更新用户头像
            TWxUser wxUser = new TWxUser();
            wxUser.setUserId(userId);
            wxUser.setAvatar(avatar);
            wxUserService.updateUser(wxUser);

            return success("头像更新成功");
        }
        catch (Exception e)
        {
            logger.error("更新用户头像失败：{}", e.getMessage());
            return error("更新头像失败");
        }
    }

    /**
     * 绑定手机号
     */
    @PostMapping("/bindPhone")
    public AjaxResult bindPhone(@RequestBody Map<String, String> params)
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            String phone = params.get("phone");
            if (phone == null || phone.isEmpty())
            {
                return error("手机号不能为空");
            }
            // 将Long类型的userId转换为String
            wxUserService.bindPhone(userId, phone);
            return success("绑定成功");
        }
        catch (Exception e)
        {
            logger.error("绑定手机号失败：{}", e.getMessage());
            return error("绑定失败：" + e.getMessage());
        }
    }

    /**
     * 检查登录状态
     */
    @GetMapping("/checkLogin")
    public AjaxResult checkLogin()
    {
        try
        {
            Long userId = SecurityUtils.getUserId();
            Map<String, Object> result = new HashMap<>();
            result.put("isLogin", userId != null);
            result.put("userId", userId);
            return success(result);
        }
        catch (Exception e)
        {
            Map<String, Object> result = new HashMap<>();
            result.put("isLogin", false);
            return success(result);
        }
    }

    /**
     * 获取微信手机号
     */
    @PostMapping("/getPhoneNumber")
    public AjaxResult getPhoneNumber(@RequestBody Map<String, String> params)
    {
        String code = params.get("code");
        if (code == null || code.isEmpty())
        {
            return error("code不能为空");
        }

        try
        {
            // 调用微信接口获取手机号
            Map<String, Object> phoneInfo = wxUserService.getPhoneNumber(code);

            if (phoneInfo == null)
            {
                return error("获取手机号失败");
            }

            return success(phoneInfo);
        }
        catch (Exception e)
        {
            logger.error("获取微信手机号失败：{}", e.getMessage());
            return error("获取失败：" + e.getMessage());
        }
    }

    /**
     * 检查用户角色信息
     * 返回用户是否填写了家长或老师信息
     */
    @GetMapping("/checkUserRole")
    public AjaxResult checkUserRole()
    {
        try
        {
            // 获取当前用户
            Long userId = SecurityUtils.getUserId();
            TWxUser wxUser = wxUserService.getUserById(userId);

            if (wxUser == null)
            {
                return error("用户不存在");
            }

            Map<String, Object> result = new HashMap<>();

            // 检查是否有家长信息
            TParentInfo parentQuery = new TParentInfo();
            parentQuery.setOpenid(wxUser.getOpenid());
            List<TParentInfo> parentList = parentInfoMapper.selectTParentInfoList(parentQuery);
            boolean hasParentInfo = parentList != null && !parentList.isEmpty();

            // 检查是否有老师信息
            TTutorInfo tutorQuery = new TTutorInfo();
            tutorQuery.setOpenid(wxUser.getOpenid());
            List<TTutorInfo> tutorList = tutorInfoMapper.selectTTutorInfoList(tutorQuery);
            boolean hasTutorInfo = tutorList != null && !tutorList.isEmpty();

            result.put("hasParentInfo", hasParentInfo);
            result.put("hasTutorInfo", hasTutorInfo);

            // 如果有家长信息，返回家长ID
            if (hasParentInfo)
            {
                result.put("parentId", parentList.get(0).getParentId());
            }

            // 如果有老师信息，返回老师ID和审核状态
            if (hasTutorInfo)
            {
                TTutorInfo tutorInfo = tutorList.get(0);
                result.put("tutorId", tutorInfo.getTutorId());
                result.put("auditStatus", tutorInfo.getAuditStatus());
            }

            return success(result);
        }
        catch (Exception e)
        {
            logger.error("检查用户角色信息失败：{}", e.getMessage());
            return error("检查失败：" + e.getMessage());
        }
    }
}
