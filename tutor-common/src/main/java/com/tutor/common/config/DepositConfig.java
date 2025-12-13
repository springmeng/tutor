package com.tutor.common.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import java.math.BigDecimal;

/**
 * 押金配置
 *
 * @author tutor
 * @date 2025-11-25
 */
@Configuration
@ConfigurationProperties(prefix = "business.deposit")
public class DepositConfig
{
    /** 家长入驻平台最低押金（元） */
    private BigDecimal parentSettleMin = BigDecimal.valueOf(1);

    /** 家教入驻平台最低押金（元） */
    private BigDecimal tutorSettleMin = BigDecimal.valueOf(1);

    /** 家长发布需求单最低押金（元/科目） */
    private BigDecimal demandPublishMin = BigDecimal.valueOf(1);

    /** 家教接单最低押金（元） */
    private BigDecimal demandAcceptMin = BigDecimal.valueOf(1);

    /** 预约试课最低押金（元） */
    private BigDecimal trialMin = BigDecimal.valueOf(1);

    public BigDecimal getParentSettleMin()
    {
        return parentSettleMin;
    }

    public void setParentSettleMin(BigDecimal parentSettleMin)
    {
        this.parentSettleMin = parentSettleMin;
    }

    public BigDecimal getTutorSettleMin()
    {
        return tutorSettleMin;
    }

    public void setTutorSettleMin(BigDecimal tutorSettleMin)
    {
        this.tutorSettleMin = tutorSettleMin;
    }

    public BigDecimal getDemandPublishMin()
    {
        return demandPublishMin;
    }

    public void setDemandPublishMin(BigDecimal demandPublishMin)
    {
        this.demandPublishMin = demandPublishMin;
    }

    public BigDecimal getDemandAcceptMin()
    {
        return demandAcceptMin;
    }

    public void setDemandAcceptMin(BigDecimal demandAcceptMin)
    {
        this.demandAcceptMin = demandAcceptMin;
    }

    public BigDecimal getTrialMin()
    {
        return trialMin;
    }

    public void setTrialMin(BigDecimal trialMin)
    {
        this.trialMin = trialMin;
    }

    /**
     * 根据订单类型获取最低押金
     *
     * @param orderType 订单类型
     * @return 最低押金金额
     */
    public BigDecimal getMinDepositByOrderType(String orderType)
    {
        if (orderType == null)
        {
            return BigDecimal.valueOf(1);
        }

        switch (orderType)
        {
            case "parent_settle":
                return parentSettleMin;
            case "tutor_settle":
                return tutorSettleMin;
            case "demand_publish":
                return demandPublishMin;
            case "demand":
                return demandAcceptMin;
            case "trial":
                return trialMin;
            default:
                return BigDecimal.valueOf(1);
        }
    }
}
