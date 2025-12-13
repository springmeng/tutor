package com.tutor.common.exception.user;

/**
 * 管理员密码不正确或不符合规范异常类
 * 
 * @author：小孟微信：codemeng
 */
public class UserPasswordNotMatchException extends UserException
{
    private static final long serialVersionUID = 1L;

    public UserPasswordNotMatchException()
    {
        super("user.password.not.match", null);
    }
}
