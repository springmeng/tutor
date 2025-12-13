package com.tutor.web.service.impl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.tutor.common.config.WxMiniAppConfig;
import com.tutor.common.core.domain.entity.SysUser;
import com.tutor.common.core.domain.model.LoginUser;
import com.tutor.common.exception.ServiceException;
import com.tutor.common.utils.DateUtils;
import com.tutor.common.utils.StringUtils;
import com.tutor.common.utils.uuid.SnowflakeIdGenerator;
import com.tutor.framework.web.service.TokenService;
import com.tutor.system.domain.TWxUser;
import com.tutor.system.mapper.TWxUserMapper;
import com.tutor.system.service.ITWxUserService;

/**
 * 微信用户Service业务层处理
 *
 * @author tutor
 * @date 2025-11-06
 */
@Service
public class TWxUserServiceImpl implements ITWxUserService
{
    private static final Logger log = LoggerFactory.getLogger(TWxUserServiceImpl.class);

    @Autowired
    private WxMiniAppConfig wxMiniAppConfig;

    @Autowired
    private TWxUserMapper wxUserMapper;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private RestTemplate restTemplate;

    /**
     * 微信小程序登录
     *
     * @param code 微信登录凭证
     * @return token
     */
    @Override
    public String wxLogin(String code)
    {
        log.info("微信小程序登录，code: {}", code);

        try
        {
            // 1. 调用微信API获取openid和session_key
            JSONObject wxResponse = getWxSessionInfo(code);

            // 2. 检查微信API返回结果
            if (wxResponse.containsKey("errcode"))
            {
                Integer errcode = wxResponse.getInteger("errcode");
                String errmsg = wxResponse.getString("errmsg");
                log.error("微信登录失败，errcode: {}, errmsg: {}", errcode, errmsg);
                throw new ServiceException("微信登录失败：" + errmsg);
            }

            String openid = wxResponse.getString("openid");
            String sessionKey = wxResponse.getString("session_key");
            String unionid = wxResponse.getString("unionid");

            if (StringUtils.isEmpty(openid))
            {
                log.error("微信登录失败，获取openid为空");
                throw new ServiceException("微信登录失败，获取openid为空");
            }

            log.info("微信登录成功，openid: {}", openid);

            // 3. 根据openid查询数据库
            TWxUser wxUser = wxUserMapper.selectWxUserByOpenid(openid);

            // 4. 如果用户不存在则创建新用户
            if (wxUser == null)
            {
                wxUser = new TWxUser();
                // 使用雪花算法生成用户ID
                wxUser.setUserId(SnowflakeIdGenerator.generateLongId());
                wxUser.setOpenid(openid);
                wxUser.setUnionid(unionid);
                wxUser.setStatus("0"); // 正常
                wxUser.setDelFlag("0"); // 未删除
                wxUser.setGender(0); // 未知
                wxUser.setAvgRating(BigDecimal.valueOf(100)); // 初始评分100分
                wxUser.setTotalEvaluations(0); // 初始评价次数0次
                wxUser.setPoints(BigDecimal.ZERO); // 初始积分0
                wxUser.setCreateTime(DateUtils.getNowDate());
                wxUser.setLastLoginTime(DateUtils.getNowDate());

                int rows = wxUserMapper.insertWxUser(wxUser);
                log.info("创建新用户，openid: {}, userId: {}, 影响行数: {}", openid, wxUser.getUserId(), rows);
            }
            else
            {
                // 5. 更新最后登录时间
                wxUser.setLastLoginTime(DateUtils.getNowDate());
                wxUser.setUpdateTime(DateUtils.getNowDate());
                int rows = wxUserMapper.updateWxUser(wxUser);
                log.info("更新用户登录时间，userId: {}, 影响行数: {}", wxUser.getUserId(), rows);
            }

            // 6. 生成JWT token
            String token = generateToken(wxUser);

            log.info("微信登录成功，userId: {}, token: {}", wxUser.getUserId(), token);

            return token;
        }
        catch (ServiceException e)
        {
            throw e;
        }
        catch (Exception e)
        {
            log.error("微信登录异常", e);
            throw new ServiceException("微信登录异常：" + e.getMessage());
        }
    }

    /**
     * 调用微信API获取session信息
     *
     * @param code 微信登录凭证
     * @return 微信返回的session信息
     */
    private JSONObject getWxSessionInfo(String code)
    {
        // 构建请求URL
        String url = wxMiniAppConfig.getCode2SessionUrl()
                + "?appid=" + wxMiniAppConfig.getAppId()
                + "&secret=" + wxMiniAppConfig.getAppSecret()
                + "&js_code=" + code
                + "&grant_type=authorization_code";

        log.info("调用微信API，url: {}", url);

        // 调用微信API
        String response = restTemplate.getForObject(url, String.class);

        log.info("微信API返回结果: {}", response);

        // 解析返回结果
        JSONObject jsonObject = JSON.parseObject(response);

        return jsonObject;
    }

    /**
     * 生成JWT token
     *
     * @param wxUser 微信用户
     * @return token
     */
    private String generateToken(TWxUser wxUser)
    {
        // 创建SysUser对象用于LoginUser
        SysUser sysUser = new SysUser();
        sysUser.setUserId(wxUser.getUserId());
        sysUser.setUserName(wxUser.getOpenid()); // 使用openid作为用户名
        sysUser.setNickName(StringUtils.isNotEmpty(wxUser.getNickname()) ? wxUser.getNickname() : "微信用户");
        sysUser.setAvatar(wxUser.getAvatar());
        sysUser.setStatus(wxUser.getStatus());
        sysUser.setDelFlag(wxUser.getDelFlag());

        // 创建LoginUser对象
        LoginUser loginUser = new LoginUser();
        loginUser.setUserId(wxUser.getUserId());
        loginUser.setUser(sysUser);

        // 生成token
        String token = tokenService.createToken(loginUser);

        return token;
    }

    /**
     * 根据openid查询微信用户
     *
     * @param openid 微信openid
     * @return 微信用户
     */
    @Override
    public TWxUser getUserByOpenid(String openid)
    {
        return wxUserMapper.selectWxUserByOpenid(openid);
    }

    /**
     * 根据userId查询微信用户
     *
     * @param userId 用户ID
     * @return 微信用户
     */
    @Override
    public TWxUser getUserById(Long userId)
    {
        return wxUserMapper.selectWxUserByUserId(userId);
    }

    /**
     * 根据家长ID查询微信用户
     *
     * @param parentId 家长ID
     * @return 微信用户
     */
    @Override
    public TWxUser getUserByParentId(Long parentId)
    {
        return wxUserMapper.selectWxUserByParentId(parentId);
    }

    /**
     * 根据家教ID查询微信用户
     *
     * @param tutorId 家教ID
     * @return 微信用户
     */
    @Override
    public TWxUser getUserByTutorId(Long tutorId)
    {
        return wxUserMapper.selectWxUserByTutorId(tutorId);
    }

    /**
     * 更新用户信息
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    @Override
    public int updateUser(TWxUser wxUser)
    {
        wxUser.setUpdateTime(DateUtils.getNowDate());
        return wxUserMapper.updateWxUser(wxUser);
    }

    /**
     * 绑定手机号
     *
     * @param userId 用户ID
     * @param phone 手机号
     * @return 结果
     */
    @Override
    public int bindPhone(Long userId, String phone)
    {
        TWxUser wxUser = new TWxUser();
        wxUser.setUserId(userId);
        wxUser.setPhone(phone);
        wxUser.setUpdateTime(DateUtils.getNowDate());
        return wxUserMapper.updateWxUser(wxUser);
    }

    /**
     * 获取微信手机号
     *
     * @param code 手机号凭证
     * @return 手机号信息
     */
    @Override
    public Map<String, Object> getPhoneNumber(String code)
    {
        log.info("获取微信手机号，code: {}", code);

        try
        {
            // 1. 获取access_token
            String accessToken = getAccessToken();

            if (StringUtils.isEmpty(accessToken))
            {
                log.error("获取access_token失败");
                throw new ServiceException("获取access_token失败");
            }

            // 2. 调用微信接口获取手机号
            String url = "https://api.weixin.qq.com/wxa/business/getuserphonenumber?access_token=" + accessToken;

            Map<String, String> requestBody = new HashMap<>();
            requestBody.put("code", code);

            log.info("调用微信获取手机号接口，url: {}", url);

            String response = restTemplate.postForObject(url, requestBody, String.class);

            log.info("微信获取手机号接口返回: {}", response);

            // 3. 解析返回结果
            JSONObject jsonObject = JSON.parseObject(response);

            if (jsonObject.containsKey("errcode"))
            {
                Integer errcode = jsonObject.getInteger("errcode");
                if (errcode != 0)
                {
                    String errmsg = jsonObject.getString("errmsg");
                    log.error("获取手机号失败，errcode: {}, errmsg: {}", errcode, errmsg);
                    throw new ServiceException("获取手机号失败：" + errmsg);
                }
            }

            // 4. 提取手机号信息
            JSONObject phoneInfo = jsonObject.getJSONObject("phone_info");
            if (phoneInfo == null)
            {
                log.error("获取手机号失败，phone_info为空");
                throw new ServiceException("获取手机号失败");
            }

            Map<String, Object> result = new HashMap<>();
            result.put("phoneNumber", phoneInfo.getString("phoneNumber"));
            result.put("purePhoneNumber", phoneInfo.getString("purePhoneNumber"));
            result.put("countryCode", phoneInfo.getString("countryCode"));

            log.info("获取手机号成功: {}", result.get("phoneNumber"));

            return result;
        }
        catch (ServiceException e)
        {
            throw e;
        }
        catch (Exception e)
        {
            log.error("获取手机号异常", e);
            throw new ServiceException("获取手机号异常：" + e.getMessage());
        }
    }

    /**
     * 获取微信access_token
     *
     * @return access_token
     */
    private String getAccessToken()
    {
        try
        {
            String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential"
                    + "&appid=" + wxMiniAppConfig.getAppId()
                    + "&secret=" + wxMiniAppConfig.getAppSecret();

            log.info("获取access_token，url: {}", url);

            String response = restTemplate.getForObject(url, String.class);

            log.info("获取access_token返回: {}", response);

            JSONObject jsonObject = JSON.parseObject(response);

            if (jsonObject.containsKey("errcode"))
            {
                Integer errcode = jsonObject.getInteger("errcode");
                String errmsg = jsonObject.getString("errmsg");
                log.error("获取access_token失败，errcode: {}, errmsg: {}", errcode, errmsg);
                return null;
            }

            String accessToken = jsonObject.getString("access_token");
            return accessToken;
        }
        catch (Exception e)
        {
            log.error("获取access_token异常", e);
            return null;
        }
    }

    /**
     * 查询所有微信用户
     *
     * @return 微信用户列表
     */
    @Override
    public List<TWxUser> selectAllUsers()
    {
        return wxUserMapper.selectAllUsers();
    }

    /**
     * 查询微信用户信息列表
     *
     * @param tWxUser 微信用户信息
     * @return 微信用户信息集合
     */
    @Override
    public List<TWxUser> selectTWxUserList(TWxUser tWxUser)
    {
        return wxUserMapper.selectTWxUserList(tWxUser);
    }

    /**
     * 查询微信用户信息详情
     *
     * @param userId 用户ID
     * @return 微信用户信息
     */
    @Override
    public TWxUser selectTWxUserByUserId(Long userId)
    {
        return wxUserMapper.selectWxUserByUserId(userId);
    }
}
