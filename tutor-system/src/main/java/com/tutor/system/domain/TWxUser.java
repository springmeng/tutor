package com.tutor.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.tutor.common.annotation.Excel;
import com.tutor.common.core.domain.BaseEntity;

/**
 * 微信小程序用户对象 t_wx_user
 *
 * @author tutor
 * @date 2025-11-06
 */
public class TWxUser extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户ID */
    private Long userId;

    /** 微信openid */
    @Excel(name = "微信openid")
    private String openid;

    /** 微信unionid */
    @Excel(name = "微信unionid")
    private String unionid;

    /** 邀请人ID */
    @Excel(name = "邀请人ID")
    private Long inviterId;

    /** 用户昵称 */
    @Excel(name = "用户昵称")
    private String nickname;

    /** 头像URL */
    @Excel(name = "头像URL")
    private String avatar;

    /** 性别 0-未知 1-男 2-女 */
    @Excel(name = "性别", readConverterExp = "0=未知,1=男,2=女")
    private Integer gender;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 用户类型：parent-家长，teacher-老师 */
    @Excel(name = "用户类型", readConverterExp = "parent=家长,teacher=老师")
    private String userType;

    /** 关联的家长ID */
    private Long parentId;

    /** 关联的家教老师ID */
    private Long tutorId;

    /** 家长编号（查询时关联查询） */
    private String parentNo;

    /** 家教编号（查询时关联查询） */
    private String tutorNo;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 最后登录时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lastLoginTime;

    /** 用户积分 */
    @Excel(name = "用户积分")
    private BigDecimal points;

    /** 用户平均评分（0-100分） */
    @Excel(name = "用户平均评分")
    private BigDecimal avgRating;

    /** 总评价次数 */
    @Excel(name = "总评价次数")
    private Integer totalEvaluations;

    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }

    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getOpenid()
    {
        return openid;
    }

    public void setUnionid(String unionid)
    {
        this.unionid = unionid;
    }

    public String getUnionid()
    {
        return unionid;
    }

    public void setInviterId(Long inviterId)
    {
        this.inviterId = inviterId;
    }

    public Long getInviterId()
    {
        return inviterId;
    }

    public void setNickname(String nickname)
    {
        this.nickname = nickname;
    }

    public String getNickname()
    {
        return nickname;
    }

    public void setAvatar(String avatar)
    {
        this.avatar = avatar;
    }

    public String getAvatar()
    {
        return avatar;
    }

    public void setGender(Integer gender)
    {
        this.gender = gender;
    }

    public Integer getGender()
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

    public void setUserType(String userType)
    {
        this.userType = userType;
    }

    public String getUserType()
    {
        return userType;
    }

    public void setParentId(Long parentId)
    {
        this.parentId = parentId;
    }

    public Long getParentId()
    {
        return parentId;
    }

    public void setTutorId(Long tutorId)
    {
        this.tutorId = tutorId;
    }

    public Long getTutorId()
    {
        return tutorId;
    }

    public void setParentNo(String parentNo)
    {
        this.parentNo = parentNo;
    }

    public String getParentNo()
    {
        return parentNo;
    }

    public void setTutorNo(String tutorNo)
    {
        this.tutorNo = tutorNo;
    }

    public String getTutorNo()
    {
        return tutorNo;
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

    public void setLastLoginTime(Date lastLoginTime)
    {
        this.lastLoginTime = lastLoginTime;
    }

    public Date getLastLoginTime()
    {
        return lastLoginTime;
    }

    public void setPoints(BigDecimal points)
    {
        this.points = points;
    }

    public BigDecimal getPoints()
    {
        return points;
    }

    public void setAvgRating(BigDecimal avgRating)
    {
        this.avgRating = avgRating;
    }

    public BigDecimal getAvgRating()
    {
        return avgRating;
    }

    public void setTotalEvaluations(Integer totalEvaluations)
    {
        this.totalEvaluations = totalEvaluations;
    }

    public Integer getTotalEvaluations()
    {
        return totalEvaluations;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("userId", getUserId())
            .append("openid", getOpenid())
            .append("unionid", getUnionid())
            .append("inviterId", getInviterId())
            .append("nickname", getNickname())
            .append("avatar", getAvatar())
            .append("gender", getGender())
            .append("phone", getPhone())
            .append("userType", getUserType())
            .append("parentId", getParentId())
            .append("tutorId", getTutorId())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("lastLoginTime", getLastLoginTime())
            .append("remark", getRemark())
            .toString();
    }
}
