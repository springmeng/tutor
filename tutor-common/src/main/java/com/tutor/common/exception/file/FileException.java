package com.tutor.common.exception.file;

import com.tutor.common.exception.base.BaseException;

/**
 * 文件信息异常类
 * 
 * @author：小孟微信：codemeng
 */
public class FileException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }

}
