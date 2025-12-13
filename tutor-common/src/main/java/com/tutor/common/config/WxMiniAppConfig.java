package com.tutor.common.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 微信小程序配置
 *
 * @author：小孟微信：codemeng
 */
@Component
@ConfigurationProperties(prefix = "wx.miniapp")
public class WxMiniAppConfig
{
    /** 小程序appId */
    private String appId;

    /** 小程序appSecret */
    private String appSecret;

    /** 微信登录凭证校验地址 */
    private String code2SessionUrl = "https://api.weixin.qq.com/sns/jscode2session";

    public String getAppId()
    {
        return appId;
    }

    public void setAppId(String appId)
    {
        this.appId = appId;
    }

    public String getAppSecret()
    {
        return appSecret;
    }

    public void setAppSecret(String appSecret)
    {
        this.appSecret = appSecret;
    }

    public String getCode2SessionUrl()
    {
        return code2SessionUrl;
    }

    public void setCode2SessionUrl(String code2SessionUrl)
    {
        this.code2SessionUrl = code2SessionUrl;
    }
}
