package com.tutor.system.service;

import java.util.List;
import com.tutor.system.domain.TStudentInfo;

/**
 * 学生信息Service接口
 *
 * @author tutor
 * @date 2025-11-05
 */
public interface ITStudentInfoService
{
    /**
     * 查询学生信息
     *
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    public TStudentInfo selectTStudentInfoByStudentId(Long studentId);

    /**
     * 查询学生信息列表
     *
     * @param tStudentInfo 学生信息
     * @return 学生信息集合
     */
    public List<TStudentInfo> selectTStudentInfoList(TStudentInfo tStudentInfo);

    /**
     * 新增学生信息
     *
     * @param tStudentInfo 学生信息
     * @return 结果
     */
    public int insertTStudentInfo(TStudentInfo tStudentInfo);

    /**
     * 修改学生信息
     *
     * @param tStudentInfo 学生信息
     * @return 结果
     */
    public int updateTStudentInfo(TStudentInfo tStudentInfo);

    /**
     * 批量删除学生信息
     *
     * @param studentIds 需要删除的学生信息主键集合
     * @return 结果
     */
    public int deleteTStudentInfoByStudentIds(Long[] studentIds);

    /**
     * 删除学生信息信息
     *
     * @param studentId 学生信息主键
     * @return 结果
     */
    public int deleteTStudentInfoByStudentId(Long studentId);
}
