package com.tutor.common.exception.user;

/**
 * 黑名单IP异常类
 * 
 * @author：小孟微信：codemeng
 */
public class BlackListException extends UserException
{
    private static final long serialVersionUID = 1L;

    public BlackListException()
    {
        super("login.blocked", null);
    }
}
