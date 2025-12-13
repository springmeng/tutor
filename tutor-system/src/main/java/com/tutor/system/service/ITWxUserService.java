package com.tutor.system.service;

import com.tutor.system.domain.TWxUser;
import java.util.List;
import java.util.Map;

/**
 * 微信用户Service接口
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-06
 */
public interface ITWxUserService
{
    /**
     * 微信小程序登录
     *
     * @param code 微信登录凭证
     * @return token
     */
    public String wxLogin(String code);

    /**
     * 根据openid查询微信用户
     *
     * @param openid 微信openid
     * @return 微信用户
     */
    public TWxUser getUserByOpenid(String openid);

    /**
     * 根据userId查询微信用户
     *
     * @param userId 用户ID
     * @return 微信用户
     */
    public TWxUser getUserById(Long userId);

    /**
     * 根据家长ID查询微信用户
     *
     * @param parentId 家长ID
     * @return 微信用户
     */
    public TWxUser getUserByParentId(Long parentId);

    /**
     * 根据家教ID查询微信用户
     *
     * @param tutorId 家教ID
     * @return 微信用户
     */
    public TWxUser getUserByTutorId(Long tutorId);

    /**
     * 更新用户信息
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    public int updateUser(TWxUser wxUser);

    /**
     * 绑定手机号
     *
     * @param userId 用户ID
     * @param phone 手机号
     * @return 结果
     */
    public int bindPhone(Long userId, String phone);

    /**
     * 获取微信手机号
     *
     * @param code 手机号凭证
     * @return 手机号信息
     */
    public Map<String, Object> getPhoneNumber(String code);

    /**
     * 查询所有微信用户
     *
     * @return 微信用户列表
     */
    public List<TWxUser> selectAllUsers();

    /**
     * 查询微信用户信息列表
     *
     * @param tWxUser 微信用户信息
     * @return 微信用户信息集合
     */
    public List<TWxUser> selectTWxUserList(TWxUser tWxUser);

    /**
     * 查询微信用户信息详情
     *
     * @param userId 用户ID
     * @return 微信用户信息
     */
    public TWxUser selectTWxUserByUserId(Long userId);
}
