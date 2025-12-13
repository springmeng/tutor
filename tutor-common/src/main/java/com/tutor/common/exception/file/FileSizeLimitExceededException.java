package com.tutor.common.exception.file;

/**
 * 文件名大小限制异常类
 * 
 * @author：小孟微信：codemeng
 */
public class FileSizeLimitExceededException extends FileException
{
    private static final long serialVersionUID = 1L;

    public FileSizeLimitExceededException(long defaultMaxSize)
    {
        super("upload.exceed.maxSize", new Object[] { defaultMaxSize });
    }
}
