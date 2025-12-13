package com.tutor.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.tutor.common.annotation.Excel;
import com.tutor.common.core.domain.BaseEntity;

/**
 * 学生信息对象 t_student_info
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-05
 */
public class TStudentInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学生ID */
    private Long studentId;

    /** 学生编号（家长编号+序号） */
    @Excel(name = "学生编号")
    private String studentNo;

    /** 所属家长ID */
    @Excel(name = "所属家长ID")
    private Long parentId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String studentName;

    /** 性别：male=男，female=女 */
    @Excel(name = "性别", readConverterExp = "male=男,female=女")
    private String gender;

    /** 年龄 */
    @Excel(name = "年龄")
    private Integer age;

    /** 年级ID */
    @Excel(name = "年级ID")
    private Long gradeId;

    /** 学校 */
    @Excel(name = "学校")
    private String school;

    /** 学习成绩 */
    @Excel(name = "学习成绩")
    private String academicPerformance;

    /** 星座 */
    @Excel(name = "星座")
    private String constellation;

    /** 其他信息（富文本） */
    @Excel(name = "其他信息")
    private String otherInfo;

    /** 是否对K12共享实验室感兴趣（0否 1是） */
    @Excel(name = "是否对K12共享实验室感兴趣", readConverterExp = "0=否,1=是")
    private String interestInK12Lab;

    /** 是否接受教育创新方面的资讯（0否 1是） */
    @Excel(name = "是否接受教育创新方面的资讯", readConverterExp = "0=否,1=是")
    private String acceptEduInnovation;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 家长姓名（关联查询用） */
    @Excel(name = "家长姓名")
    private String parentName;

    /** 年级名称（关联查询用） */
    @Excel(name = "年级")
    private String gradeName;

    public void setStudentId(Long studentId)
    {
        this.studentId = studentId;
    }

    public Long getStudentId()
    {
        return studentId;
    }

    public void setStudentNo(String studentNo)
    {
        this.studentNo = studentNo;
    }

    public String getStudentNo()
    {
        return studentNo;
    }

    public void setParentId(Long parentId)
    {
        this.parentId = parentId;
    }

    public Long getParentId()
    {
        return parentId;
    }

    public void setStudentName(String studentName)
    {
        this.studentName = studentName;
    }

    public String getStudentName()
    {
        return studentName;
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

    public void setGradeId(Long gradeId)
    {
        this.gradeId = gradeId;
    }

    public Long getGradeId()
    {
        return gradeId;
    }

    public void setSchool(String school)
    {
        this.school = school;
    }

    public String getSchool()
    {
        return school;
    }

    public void setAcademicPerformance(String academicPerformance)
    {
        this.academicPerformance = academicPerformance;
    }

    public String getAcademicPerformance()
    {
        return academicPerformance;
    }

    public void setConstellation(String constellation)
    {
        this.constellation = constellation;
    }

    public String getConstellation()
    {
        return constellation;
    }

    public void setOtherInfo(String otherInfo)
    {
        this.otherInfo = otherInfo;
    }

    public String getOtherInfo()
    {
        return otherInfo;
    }

    public void setInterestInK12Lab(String interestInK12Lab)
    {
        this.interestInK12Lab = interestInK12Lab;
    }

    public String getInterestInK12Lab()
    {
        return interestInK12Lab;
    }

    public void setAcceptEduInnovation(String acceptEduInnovation)
    {
        this.acceptEduInnovation = acceptEduInnovation;
    }

    public String getAcceptEduInnovation()
    {
        return acceptEduInnovation;
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

    public String getParentName()
    {
        return parentName;
    }

    public void setParentName(String parentName)
    {
        this.parentName = parentName;
    }

    public String getGradeName()
    {
        return gradeName;
    }

    public void setGradeName(String gradeName)
    {
        this.gradeName = gradeName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("studentNo", getStudentNo())
            .append("parentId", getParentId())
            .append("studentName", getStudentName())
            .append("gender", getGender())
            .append("age", getAge())
            .append("gradeId", getGradeId())
            .append("school", getSchool())
            .append("academicPerformance", getAcademicPerformance())
            .append("constellation", getConstellation())
            .append("otherInfo", getOtherInfo())
            .append("interestInK12Lab", getInterestInK12Lab())
            .append("acceptEduInnovation", getAcceptEduInnovation())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
