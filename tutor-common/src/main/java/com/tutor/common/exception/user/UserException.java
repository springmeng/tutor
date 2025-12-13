package com.tutor.common.exception.user;

import com.tutor.common.exception.base.BaseException;

/**
 * 管理员信息异常类
 * 
 * @author ruoyi
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }
}
