package com.tutor.common.exception.user;

/**
 * 管理员不存在异常类
 * 
 * @author：小孟微信：codemeng
 */
public class UserNotExistsException extends UserException
{
    private static final long serialVersionUID = 1L;

    public UserNotExistsException()
    {
        super("user.not.exists", null);
    }
}
