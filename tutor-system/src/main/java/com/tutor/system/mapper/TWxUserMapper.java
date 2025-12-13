package com.tutor.system.mapper;

import com.tutor.system.domain.TWxUser;
import java.util.List;

/**
 * 微信用户Mapper接口
 *
 * @author tutor
 * @date 2025-11-06
 */
public interface TWxUserMapper
{
    /**
     * 根据openid查询微信用户
     *
     * @param openid 微信openid
     * @return 微信用户
     */
    public TWxUser selectWxUserByOpenid(String openid);

    /**
     * 根据手机号查询微信用户
     *
     * @param phone 手机号
     * @return 微信用户
     */
    public TWxUser selectWxUserByPhone(String phone);

    /**
     * 查询微信用户
     *
     * @param userId 微信用户主键
     * @return 微信用户
     */
    public TWxUser selectWxUserByUserId(Long userId);

    /**
     * 根据家长ID查询微信用户
     *
     * @param parentId 家长ID
     * @return 微信用户
     */
    public TWxUser selectWxUserByParentId(Long parentId);

    /**
     * 根据家教ID查询微信用户
     *
     * @param tutorId 家教ID
     * @return 微信用户
     */
    public TWxUser selectWxUserByTutorId(Long tutorId);

    /**
     * 查询所有微信用户
     *
     * @return 微信用户列表
     */
    public List<TWxUser> selectAllUsers();

    /**
     * 新增微信用户
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    public int insertWxUser(TWxUser wxUser);

    /**
     * 修改微信用户
     *
     * @param wxUser 微信用户
     * @return 结果
     */
    public int updateWxUser(TWxUser wxUser);

    /**
     * 删除微信用户
     *
     * @param userId 微信用户主键
     * @return 结果
     */
    public int deleteWxUserByUserId(Long userId);

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
