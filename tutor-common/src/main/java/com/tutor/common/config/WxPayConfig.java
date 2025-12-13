package com.tutor.common.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * 微信支付配置
 * 
 * @author tutor
 * @date 2025-11-17
 */
@Configuration
@ConfigurationProperties(prefix = "wx.pay")
public class WxPayConfig
{
    /** 微信小程序AppID */
    private String appId;

    /** 微信商户号 */
    private String mchId;

    /** 商户密钥（API v2） */
    private String mchKey;

    /** 商户证书路径（用于退款） */
    private String certPath;

    /** 支付回调地址 */
    private String notifyUrl;

    public String getAppId()
    {
        return appId;
    }

    public void setAppId(String appId)
    {
        this.appId = appId;
    }

    public String getMchId()
    {
        return mchId;
    }

    public void setMchId(String mchId)
    {
        this.mchId = mchId;
    }

    public String getMchKey()
    {
        return mchKey;
    }

    public void setMchKey(String mchKey)
    {
        this.mchKey = mchKey;
    }

    public String getCertPath()
    {
        return certPath;
    }

    public void setCertPath(String certPath)
    {
        this.certPath = certPath;
    }

    public String getNotifyUrl()
    {
        return notifyUrl;
    }

    public void setNotifyUrl(String notifyUrl)
    {
        this.notifyUrl = notifyUrl;
    }
}
