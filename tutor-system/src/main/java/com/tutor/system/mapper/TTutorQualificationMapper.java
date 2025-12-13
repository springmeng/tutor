package com.tutor.system.mapper;

import com.tutor.system.domain.TTutorQualification;

/**
 * 教师资格信息Mapper接口
 *
 * @author tutor
 * @date 2025-11-04
 */
public interface TTutorQualificationMapper
{
    /**
     * 根据家教ID查询教师资格信息
     *
     * @param tutorId 家教ID
     * @return 教师资格信息
     */
    public TTutorQualification selectTTutorQualificationByTutorId(Long tutorId);

    /**
     * 新增教师资格信息
     *
     * @param qualification 教师资格信息
     * @return 结果
     */
    public int insertTTutorQualification(TTutorQualification qualification);

    /**
     * 修改教师资格信息
     *
     * @param qualification 教师资格信息
     * @return 结果
     */
    public int updateTTutorQualification(TTutorQualification qualification);

    /**
     * 删除教师资格信息
     *
     * @param tutorId 家教ID
     * @return 结果
     */
    public int deleteTTutorQualificationByTutorId(Long tutorId);
}
