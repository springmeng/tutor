package com.tutor.system.mapper;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tutor.common.core.domain.entity.SysUser;

/**
 * 管理员表 数据层
 * 
 * @author：小孟微信：codemeng
 */
public interface SysUserMapper
{
    /**
     * 根据条件分页查询管理员列表
     * 
     * @param sysUser 管理员信息
     * @return 管理员信息集合信息
     */
    public List<SysUser> selectUserList(SysUser sysUser);

    /**
     * 根据条件分页查询已配管理员角色列表
     * 
     * @param user 管理员信息
     * @return 管理员信息集合信息
     */
    public List<SysUser> selectAllocatedList(SysUser user);

    /**
     * 根据条件分页查询未分配管理员角色列表
     * 
     * @param user 管理员信息
     * @return 管理员信息集合信息
     */
    public List<SysUser> selectUnallocatedList(SysUser user);

    /**
     * 通过管理员名查询管理员
     * 
     * @param userName 管理员名
     * @return 管理员对象信息
     */
    public SysUser selectUserByUserName(String userName);

    /**
     * 通过管理员ID查询管理员
     * 
     * @param userId 管理员ID
     * @return 管理员对象信息
     */
    public SysUser selectUserById(Long userId);

    /**
     * 新增管理员信息
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int insertUser(SysUser user);

    /**
     * 修改管理员信息
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int updateUser(SysUser user);

    /**
     * 修改管理员头像
     * 
     * @param userId 管理员ID
     * @param avatar 头像地址
     * @return 结果
     */
    public int updateUserAvatar(@Param("userId") Long userId, @Param("avatar") String avatar);

    /**
     * 修改管理员状态
     * 
     * @param userId 管理员ID
     * @param status 状态
     * @return 结果
     */
    public int updateUserStatus(@Param("userId") Long userId, @Param("status") String status);

    /**
     * 更新管理员登录信息（IP和登录时间）
     * 
     * @param userId 管理员ID
     * @param loginIp 登录IP地址
     * @param loginDate 登录时间
     * @return 结果
     */
    public int updateLoginInfo(@Param("userId") Long userId, @Param("loginIp") String loginIp, @Param("loginDate") Date loginDate);

    /**
     * 重置管理员密码
     * 
     * @param userId 管理员ID
     * @param password 密码
     * @return 结果
     */
    public int resetUserPwd(@Param("userId") Long userId, @Param("password") String password);

    /**
     * 通过管理员ID删除管理员
     * 
     * @param userId 管理员ID
     * @return 结果
     */
    public int deleteUserById(Long userId);

    /**
     * 批量删除管理员信息
     * 
     * @param userIds 需要删除的管理员ID
     * @return 结果
     */
    public int deleteUserByIds(Long[] userIds);

    /**
     * 校验管理员名称是否唯一
     * 
     * @param userName 管理员名称
     * @return 结果
     */
    public SysUser checkUserNameUnique(String userName);

    /**
     * 校验手机号码是否唯一
     *
     * @param phonenumber 手机号码
     * @return 结果
     */
    public SysUser checkPhoneUnique(String phonenumber);

    /**
     * 校验email是否唯一
     *
     * @param email 管理员邮箱
     * @return 结果
     */
    public SysUser checkEmailUnique(String email);
}
