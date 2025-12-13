package com.tutor.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.tutor.common.annotation.Excel;
import com.tutor.common.core.domain.BaseEntity;

/**
 * 家教信息对象 t_tutor_info
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-04
 */
public class TTutorInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 家教ID */
    private Long tutorId;

    /** 家教编号 */
    @Excel(name = "家教编号")
    private String tutorNo;

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

    /** 经度 */
    @Excel(name = "经度")
    private BigDecimal longitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private BigDecimal latitude;

    /** 籍贯 */
    @Excel(name = "籍贯")
    private String nativePlace;

    /** 姓名 */
    @Excel(name = "姓名")
    private String tutorName;

    /** 性别（male男，female女） */
    @Excel(name = "性别", readConverterExp = "male=男,female=女")
    private String gender;

    /** 年龄 */
    @Excel(name = "年龄")
    private Integer age;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 家教头像（多张，用逗号分隔） */
    @Excel(name = "家教头像")
    private String avatarImages;

    /** 教师类型（retired退休，working在职，student在校生） */
    @Excel(name = "教师类型", readConverterExp = "retired=退休,working=在职,student=在校生")
    private String teacherType;

    /** 无犯罪记录证明 */
    @Excel(name = "无犯罪记录证明")
    private String crimeRecordCert;

    /** 身份证号 */
    @Excel(name = "身份证号")
    private String idCard;

    /** 微信openid */
    private String openid;

    /** 点赞数量 */
    @Excel(name = "点赞数量")
    private Integer likeCount;

    /** 年级ID */
    @Excel(name = "年级ID")
    private Long gradeId;

    /** 年级名称 */
    @Excel(name = "年级")
    private String gradeName;

    /** 毕业院校 */
    @Excel(name = "毕业院校")
    private String university;

    /** 专业 */
    @Excel(name = "专业")
    private String major;

    /** 可辅导科目IDs */
    private String subjectIds;

    /** 可辅导科目名称 */
    @Excel(name = "可辅导科目")
    private String subjectNames;

    /** 可辅导年级IDs */
    private String tutorableGradeIds;

    /** 可辅导年级名称 */
    @Excel(name = "可辅导年级")
    private String tutorableGradeNames;

    /** 学员要求 */
    @Excel(name = "学员要求")
    private String studentRequire;

    /** 教学方式（offline线下,online线上，多个用逗号分隔） */
    @Excel(name = "教学方式")
    private String teachingMode;

    /** 可辅导时间 */
    private String availableTime;

    /** 期望助学金（元/小时） */
    @Excel(name = "期望助学金")
    private BigDecimal expectedSalary;

    /** 试课时间 */
    private String trialTime;

    /** 中考成绩 */
    @Excel(name = "中考成绩")
    private BigDecimal middleScore;

    /** 高考成绩 */
    @Excel(name = "高考成绩")
    private BigDecimal highScore;

    /** 星座 */
    @Excel(name = "星座")
    private String constellation;

    /** 服务次数 */
    @Excel(name = "服务次数")
    private Integer serviceCount;

    /** 评价平均分 */
    @Excel(name = "评价平均分")
    private BigDecimal avgScore;

    /** 积分 */
    @Excel(name = "积分")
    private Integer points;

    /** 实验室经验（小时） */
    @Excel(name = "实验室经验")
    private Integer labHours;

    /** DIY经验（小时） */
    @Excel(name = "DIY经验")
    private Integer diyHours;

    /** 是否接受极简主义交友（0否 1是） */
    @Excel(name = "接受极简主义交友", readConverterExp = "0=否,1=是")
    private String acceptMinimalist;

    /** 其他信息 */
    private String otherInfo;

    /** 个人简介（富文本） */
    private String personalProfile;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 审核状态（0待审核 1审核通过 2审核拒绝） */
    @Excel(name = "审核状态", readConverterExp = "0=待审核,1=审核通过,2=审核拒绝")
    private String auditStatus;

    /** 审核时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "审核时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date auditTime;

    /** 审核备注 */
    private String auditRemark;

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

    /** 教师资格信息 */
    private TTutorQualification qualification;

    public void setTutorId(Long tutorId)
    {
        this.tutorId = tutorId;
    }

    public Long getTutorId()
    {
        return tutorId;
    }

    public void setTutorNo(String tutorNo)
    {
        this.tutorNo = tutorNo;
    }

    public String getTutorNo()
    {
        return tutorNo;
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

    public void setLongitude(BigDecimal longitude)
    {
        this.longitude = longitude;
    }

    public BigDecimal getLongitude()
    {
        return longitude;
    }

    public void setLatitude(BigDecimal latitude)
    {
        this.latitude = latitude;
    }

    public BigDecimal getLatitude()
    {
        return latitude;
    }

    public void setNativePlace(String nativePlace)
    {
        this.nativePlace = nativePlace;
    }

    public String getNativePlace()
    {
        return nativePlace;
    }

    public void setTutorName(String tutorName)
    {
        this.tutorName = tutorName;
    }

    public String getTutorName()
    {
        return tutorName;
    }

    public void setGender(String gender)
    {
        this.gender = gender;
    }

    public String getGender()
    {
        return gender;
    }

    public void setAge(Integer age)
    {
        this.age = age;
    }

    public Integer getAge()
    {
        return age;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setAvatarImages(String avatarImages)
    {
        this.avatarImages = avatarImages;
    }

    public String getAvatarImages()
    {
        return avatarImages;
    }

    public void setTeacherType(String teacherType)
    {
        this.teacherType = teacherType;
    }

    public String getTeacherType()
    {
        return teacherType;
    }

    public void setCrimeRecordCert(String crimeRecordCert)
    {
        this.crimeRecordCert = crimeRecordCert;
    }

    public String getCrimeRecordCert()
    {
        return crimeRecordCert;
    }

    public void setIdCard(String idCard)
    {
        this.idCard = idCard;
    }

    public String getIdCard()
    {
        return idCard;
    }

    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getOpenid()
    {
        return openid;
    }

    public void setLikeCount(Integer likeCount)
    {
        this.likeCount = likeCount;
    }

    public Integer getLikeCount()
    {
        return likeCount;
    }

    public void setGradeId(Long gradeId)
    {
        this.gradeId = gradeId;
    }

    public Long getGradeId()
    {
        return gradeId;
    }

    public void setGradeName(String gradeName)
    {
        this.gradeName = gradeName;
    }

    public String getGradeName()
    {
        return gradeName;
    }

    public void setUniversity(String university)
    {
        this.university = university;
    }

    public String getUniversity()
    {
        return university;
    }

    public void setMajor(String major)
    {
        this.major = major;
    }

    public String getMajor()
    {
        return major;
    }

    public void setSubjectIds(String subjectIds)
    {
        this.subjectIds = subjectIds;
    }

    public String getSubjectIds()
    {
        return subjectIds;
    }

    public void setSubjectNames(String subjectNames)
    {
        this.subjectNames = subjectNames;
    }

    public String getSubjectNames()
    {
        return subjectNames;
    }

    public void setTutorableGradeIds(String tutorableGradeIds)
    {
        this.tutorableGradeIds = tutorableGradeIds;
    }

    public String getTutorableGradeIds()
    {
        return tutorableGradeIds;
    }

    public void setTutorableGradeNames(String tutorableGradeNames)
    {
        this.tutorableGradeNames = tutorableGradeNames;
    }

    public String getTutorableGradeNames()
    {
        return tutorableGradeNames;
    }

    public void setStudentRequire(String studentRequire)
    {
        this.studentRequire = studentRequire;
    }

    public String getStudentRequire()
    {
        return studentRequire;
    }

    public void setTeachingMode(String teachingMode)
    {
        this.teachingMode = teachingMode;
    }

    public String getTeachingMode()
    {
        return teachingMode;
    }

    public void setAvailableTime(String availableTime)
    {
        this.availableTime = availableTime;
    }

    public String getAvailableTime()
    {
        return availableTime;
    }

    public void setExpectedSalary(BigDecimal expectedSalary)
    {
        this.expectedSalary = expectedSalary;
    }

    public BigDecimal getExpectedSalary()
    {
        return expectedSalary;
    }

    public void setTrialTime(String trialTime)
    {
        this.trialTime = trialTime;
    }

    public String getTrialTime()
    {
        return trialTime;
    }

    public void setMiddleScore(BigDecimal middleScore)
    {
        this.middleScore = middleScore;
    }

    public BigDecimal getMiddleScore()
    {
        return middleScore;
    }

    public void setHighScore(BigDecimal highScore)
    {
        this.highScore = highScore;
    }

    public BigDecimal getHighScore()
    {
        return highScore;
    }

    public void setConstellation(String constellation)
    {
        this.constellation = constellation;
    }

    public String getConstellation()
    {
        return constellation;
    }

    public void setServiceCount(Integer serviceCount)
    {
        this.serviceCount = serviceCount;
    }

    public Integer getServiceCount()
    {
        return serviceCount;
    }

    public void setAvgScore(BigDecimal avgScore)
    {
        this.avgScore = avgScore;
    }

    public BigDecimal getAvgScore()
    {
        return avgScore;
    }

    public void setPoints(Integer points)
    {
        this.points = points;
    }

    public Integer getPoints()
    {
        return points;
    }

    public void setLabHours(Integer labHours)
    {
        this.labHours = labHours;
    }

    public Integer getLabHours()
    {
        return labHours;
    }

    public void setDiyHours(Integer diyHours)
    {
        this.diyHours = diyHours;
    }

    public Integer getDiyHours()
    {
        return diyHours;
    }

    public void setAcceptMinimalist(String acceptMinimalist)
    {
        this.acceptMinimalist = acceptMinimalist;
    }

    public String getAcceptMinimalist()
    {
        return acceptMinimalist;
    }

    public void setOtherInfo(String otherInfo)
    {
        this.otherInfo = otherInfo;
    }

    public String getOtherInfo()
    {
        return otherInfo;
    }

    public void setPersonalProfile(String personalProfile)
    {
        this.personalProfile = personalProfile;
    }

    public String getPersonalProfile()
    {
        return personalProfile;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }

    public void setAuditStatus(String auditStatus)
    {
        this.auditStatus = auditStatus;
    }

    public String getAuditStatus()
    {
        return auditStatus;
    }

    public void setAuditTime(Date auditTime)
    {
        this.auditTime = auditTime;
    }

    public Date getAuditTime()
    {
        return auditTime;
    }

    public void setAuditRemark(String auditRemark)
    {
        this.auditRemark = auditRemark;
    }

    public String getAuditRemark()
    {
        return auditRemark;
    }

    public void setDelFlag(String delFlag)
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag()
    {
        return delFlag;
    }

    public void setQualification(TTutorQualification qualification)
    {
        this.qualification = qualification;
    }

    public TTutorQualification getQualification()
    {
        return qualification;
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
            .append("tutorId", getTutorId())
            .append("tutorNo", getTutorNo())
            .append("province", getProvince())
            .append("city", getCity())
            .append("district", getDistrict())
            .append("address", getAddress())
            .append("longitude", getLongitude())
            .append("latitude", getLatitude())
            .append("nativePlace", getNativePlace())
            .append("tutorName", getTutorName())
            .append("gender", getGender())
            .append("phone", getPhone())
            .append("avatarImages", getAvatarImages())
            .append("teacherType", getTeacherType())
            .append("crimeRecordCert", getCrimeRecordCert())
            .append("idCard", getIdCard())
            .append("openid", getOpenid())
            .append("gradeId", getGradeId())
            .append("university", getUniversity())
            .append("major", getMajor())
            .append("subjectIds", getSubjectIds())
            .append("studentRequire", getStudentRequire())
            .append("teachingMode", getTeachingMode())
            .append("availableTime", getAvailableTime())
            .append("expectedSalary", getExpectedSalary())
            .append("trialTime", getTrialTime())
            .append("middleScore", getMiddleScore())
            .append("highScore", getHighScore())
            .append("constellation", getConstellation())
            .append("serviceCount", getServiceCount())
            .append("avgScore", getAvgScore())
            .append("points", getPoints())
            .append("labHours", getLabHours())
            .append("diyHours", getDiyHours())
            .append("acceptMinimalist", getAcceptMinimalist())
            .append("otherInfo", getOtherInfo())
            .append("status", getStatus())
            .append("auditStatus", getAuditStatus())
            .append("auditTime", getAuditTime())
            .append("auditRemark", getAuditRemark())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
