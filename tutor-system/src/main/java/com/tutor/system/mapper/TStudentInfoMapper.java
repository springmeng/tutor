package com.tutor.system.mapper;

import java.util.List;
import com.tutor.system.domain.TStudentInfo;

/**
 * 学生信息Mapper接口
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-05
 */
public interface TStudentInfoMapper
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
     * 删除学生信息
     *
     * @param studentId 学生信息主键
     * @return 结果
     */
    public int deleteTStudentInfoByStudentId(Long studentId);

    /**
     * 批量删除学生信息
     *
     * @param studentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTStudentInfoByStudentIds(Long[] studentIds);

    /**
     * 检查学生编号是否唯一
     *
     * @param studentNo 学生编号
     * @return 结果
     */
    public TStudentInfo checkStudentNoUnique(String studentNo);

    /**
     * 统计某家长下的学生数量
     *
     * @param parentId 家长ID
     * @return 学生数量
     */
    public int countStudentsByParentId(Long parentId);
}
