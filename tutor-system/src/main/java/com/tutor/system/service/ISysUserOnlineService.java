package com.tutor.system.service;

import com.tutor.common.core.domain.model.LoginUser;
import com.tutor.system.domain.SysUserOnline;

/**
 * 在线管理员 服务层
 * 
 * @author ruoyi
 */
public interface ISysUserOnlineService
{
    /**
     * 通过登录地址查询信息
     * 
     * @param ipaddr 登录地址
     * @param user 管理员信息
     * @return 在线管理员信息
     */
    public SysUserOnline selectOnlineByIpaddr(String ipaddr, LoginUser user);

    /**
     * 通过管理员名称查询信息
     * 
     * @param userName 管理员名称
     * @param user 管理员信息
     * @return 在线管理员信息
     */
    public SysUserOnline selectOnlineByUserName(String userName, LoginUser user);

    /**
     * 通过登录地址/管理员名称查询信息
     * 
     * @param ipaddr 登录地址
     * @param userName 管理员名称
     * @param user 管理员信息
     * @return 在线管理员信息
     */
    public SysUserOnline selectOnlineByInfo(String ipaddr, String userName, LoginUser user);

    /**
     * 设置在线管理员信息
     * 
     * @param user 管理员信息
     * @return 在线管理员
     */
    public SysUserOnline loginUserToUserOnline(LoginUser user);
}
