package com.tutor.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 教师资格信息对象 t_tutor_qualification
 *
 * @author tutor
 * @date 2025-11-04
 */
public class TTutorQualification
{
    private static final long serialVersionUID = 1L;

    /** 资格信息ID */
    private Long qualificationId;

    /** 家教ID */
    private Long tutorId;

    /** 教师资格证书图片URL */
    private String teacherCertificate;

    /** 教学经验 */
    private String teachingExperience;

    /** 性格介绍 */
    private String characterIntro;

    /** 荣誉奖项图片 */
    private String honorImages;

    /** 其他优势 */
    private String otherAdvantage;

    /** 简历URL */
    private String resumeUrl;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    public void setQualificationId(Long qualificationId)
    {
        this.qualificationId = qualificationId;
    }

    public Long getQualificationId()
    {
        return qualificationId;
    }

    public void setTutorId(Long tutorId)
    {
        this.tutorId = tutorId;
    }

    public Long getTutorId()
    {
        return tutorId;
    }

    public void setTeacherCertificate(String teacherCertificate)
    {
        this.teacherCertificate = teacherCertificate;
    }

    public String getTeacherCertificate()
    {
        return teacherCertificate;
    }

    public void setTeachingExperience(String teachingExperience)
    {
        this.teachingExperience = teachingExperience;
    }

    public String getTeachingExperience()
    {
        return teachingExperience;
    }

    public void setCharacterIntro(String characterIntro)
    {
        this.characterIntro = characterIntro;
    }

    public String getCharacterIntro()
    {
        return characterIntro;
    }

    public void setHonorImages(String honorImages)
    {
        this.honorImages = honorImages;
    }

    public String getHonorImages()
    {
        return honorImages;
    }

    public void setOtherAdvantage(String otherAdvantage)
    {
        this.otherAdvantage = otherAdvantage;
    }

    public String getOtherAdvantage()
    {
        return otherAdvantage;
    }

    public void setResumeUrl(String resumeUrl)
    {
        this.resumeUrl = resumeUrl;
    }

    public String getResumeUrl()
    {
        return resumeUrl;
    }

    public void setCreateTime(Date createTime)
    {
        this.createTime = createTime;
    }

    public Date getCreateTime()
    {
        return createTime;
    }

    public void setUpdateTime(Date updateTime)
    {
        this.updateTime = updateTime;
    }

    public Date getUpdateTime()
    {
        return updateTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("qualificationId", getQualificationId())
            .append("tutorId", getTutorId())
            .append("teacherCertificate", getTeacherCertificate())
            .append("teachingExperience", getTeachingExperience())
            .append("characterIntro", getCharacterIntro())
            .append("honorImages", getHonorImages())
            .append("otherAdvantage", getOtherAdvantage())
            .append("resumeUrl", getResumeUrl())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
