package com.tutor.system.service;

import java.util.Date;
import java.util.List;
import com.tutor.common.core.domain.entity.SysUser;

/**
 * 管理员 业务层
 * 
 * @author：小孟微信：codemeng
 */
public interface ISysUserService
{
    /**
     * 根据条件分页查询管理员列表
     * 
     * @param user 管理员信息
     * @return 管理员信息集合信息
     */
    public List<SysUser> selectUserList(SysUser user);

    /**
     * 根据条件分页查询已分配管理员角色列表
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
     * 根据管理员ID查询管理员所属角色组
     * 
     * @param userName 管理员名
     * @return 结果
     */
    public String selectUserRoleGroup(String userName);

    /**
     * 根据管理员ID查询管理员所属岗位组
     * 
     * @param userName 管理员名
     * @return 结果
     */
    public String selectUserPostGroup(String userName);

    /**
     * 校验管理员名称是否唯一
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public boolean checkUserNameUnique(SysUser user);

    /**
     * 校验手机号码是否唯一
     *
     * @param user 管理员信息
     * @return 结果
     */
    public boolean checkPhoneUnique(SysUser user);

    /**
     * 校验email是否唯一
     *
     * @param user 管理员信息
     * @return 结果
     */
    public boolean checkEmailUnique(SysUser user);

    /**
     * 校验管理员是否允许操作
     * 
     * @param user 管理员信息
     */
    public void checkUserAllowed(SysUser user);

    /**
     * 校验管理员是否有数据权限
     * 
     * @param userId 管理员id
     */
    public void checkUserDataScope(Long userId);

    /**
     * 新增管理员信息
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int insertUser(SysUser user);

    /**
     * 注册管理员信息
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public boolean registerUser(SysUser user);

    /**
     * 修改管理员信息
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int updateUser(SysUser user);

    /**
     * 管理员授权角色
     * 
     * @param userId 管理员ID
     * @param roleIds 角色组
     */
    public void insertUserAuth(Long userId, Long[] roleIds);

    /**
     * 修改管理员状态
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int updateUserStatus(SysUser user);

    /**
     * 修改管理员基本信息
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int updateUserProfile(SysUser user);

    /**
     * 修改管理员头像
     * 
     * @param userId 管理员ID
     * @param avatar 头像地址
     * @return 结果
     */
    public boolean updateUserAvatar(Long userId, String avatar);

    /**
     * 更新管理员登录信息（IP和登录时间）
     * 
     * @param userId 管理员ID
     * @param loginIp 登录IP地址
     * @param loginDate 登录时间
     * @return 结果
     */
    public void updateLoginInfo(Long userId, String loginIp, Date loginDate);

    /**
     * 重置管理员密码
     * 
     * @param user 管理员信息
     * @return 结果
     */
    public int resetPwd(SysUser user);

    /**
     * 重置管理员密码
     * 
     * @param userId 管理员ID
     * @param password 密码
     * @return 结果
     */
    public int resetUserPwd(Long userId, String password);

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
     * 导入管理员数据
     * 
     * @param userList 管理员数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作管理员
     * @return 结果
     */
    public String importUser(List<SysUser> userList, Boolean isUpdateSupport, String operName);
}
