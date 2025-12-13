package com.tutor.system.domain;

import java.math.BigDecimal;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.tutor.common.annotation.Excel;
import com.tutor.common.core.domain.BaseEntity;

/**
 * 家长信息对象 t_parent_info
 *
 * @author tutor
 * @date 2025-11-05
 */
public class TParentInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 家长ID */
    private Long parentId;

    /** 家长编号 */
    @Excel(name = "家长编号")
    private String parentNo;

    /** 姓名 */
    @Excel(name = "姓名")
    private String parentName;

    /** 头像 */
    @Excel(name = "头像")
    private String avatar;

    /** 性别（male男，female女） */
    @Excel(name = "性别", readConverterExp = "male=男,female=女")
    private String gender;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 身份证号 */
    @Excel(name = "身份证号")
    @NotBlank(message = "身份证号不能为空")
    @Pattern(regexp = "^[1-9]\\d{5}(18|19|20)\\d{2}((0[1-9])|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|X|x)$|^[1-9]\\d{5}\\d{2}((0[1-9])|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$",
            message = "身份证号格式不正确")
    private String idCard;

    /** 所属省份 */
    @Excel(name = "所属省份")
    private String province;

    /** 所在市 */
    @Excel(name = "所在市")
    private String city;

    /** 所在区/县 */
    @Excel(name = "所在区/县")
    private String district;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String address;

    /** 平均评分 */
    @Excel(name = "平均评分")
    private BigDecimal avgScore;

    /** 微信openid */
    private String openid;

    /** 状态 */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志 */
    private String delFlag;

    /** 押金金额 */
    @Excel(name = "押金金额")
    private BigDecimal depositAmount;

    /** 微信交易单号 */
    @Excel(name = "微信交易单号")
    private String depositTransactionId;

    /** 押金状态（0=未支付，1=已支付，2=已退款） */
    @Excel(name = "押金状态", readConverterExp = "0=未支付,1=已支付,2=已退款")
    private String depositStatus;

    public void setParentId(Long parentId)
    {
        this.parentId = parentId;
    }

    public Long getParentId()
    {
        return parentId;
    }

    public void setParentNo(String parentNo)
    {
        this.parentNo = parentNo;
    }

    public String getParentNo()
    {
        return parentNo;
    }

    public void setParentName(String parentName)
    {
        this.parentName = parentName;
    }

    public String getParentName()
    {
        return parentName;
    }

    public void setAvatar(String avatar)
    {
        this.avatar = avatar;
    }

    public String getAvatar()
    {
        return avatar;
    }

    public void setGender(String gender)
    {
        this.gender = gender;
    }

    public String getGender()
    {
        return gender;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setIdCard(String idCard)
    {
        this.idCard = idCard;
    }

    public String getIdCard()
    {
        return idCard;
    }

    public void setProvince(String province)
    {
        this.province = province;
    }

    public String getProvince()
    {
        return province;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public String getCity()
    {
        return city;
    }

    public void setDistrict(String district)
    {
        this.district = district;
    }

    public String getDistrict()
    {
        return district;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAvgScore(BigDecimal avgScore)
    {
        this.avgScore = avgScore;
    }

    public BigDecimal getAvgScore()
    {
        return avgScore;
    }

    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getOpenid()
    {
        return openid;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }

    public void setDelFlag(String delFlag)
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag()
    {
        return delFlag;
    }

    public void setDepositAmount(BigDecimal depositAmount)
    {
        this.depositAmount = depositAmount;
    }

    public BigDecimal getDepositAmount()
    {
        return depositAmount;
    }

    public void setDepositTransactionId(String depositTransactionId)
    {
        this.depositTransactionId = depositTransactionId;
    }

    public String getDepositTransactionId()
    {
        return depositTransactionId;
    }

    public void setDepositStatus(String depositStatus)
    {
        this.depositStatus = depositStatus;
    }

    public String getDepositStatus()
    {
        return depositStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("parentId", getParentId())
            .append("parentNo", getParentNo())
            .append("parentName", getParentName())
            .append("avatar", getAvatar())
            .append("gender", getGender())
            .append("phone", getPhone())
            .append("idCard", getIdCard())
            .append("province", getProvince())
            .append("city", getCity())
            .append("district", getDistrict())
            .append("address", getAddress())
            .append("avgScore", getAvgScore())
            .append("openid", getOpenid())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("depositAmount", getDepositAmount())
            .append("depositTransactionId", getDepositTransactionId())
            .append("depositStatus", getDepositStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
