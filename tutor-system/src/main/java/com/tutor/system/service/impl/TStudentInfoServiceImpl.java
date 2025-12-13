package com.tutor.system.service.impl;

import java.util.List;
import com.tutor.common.utils.DateUtils;
import com.tutor.common.utils.SecurityUtils;
import com.tutor.system.domain.TParentInfo;
import com.tutor.system.mapper.TParentInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tutor.system.mapper.TStudentInfoMapper;
import com.tutor.system.domain.TStudentInfo;
import com.tutor.system.service.ITStudentInfoService;

/**
 * 学生信息Service业务层处理
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-05
 */
@Service
public class TStudentInfoServiceImpl implements ITStudentInfoService
{
    @Autowired
    private TStudentInfoMapper tStudentInfoMapper;

    @Autowired
    private TParentInfoMapper tParentInfoMapper;

    /**
     * 查询学生信息
     *
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    @Override
    public TStudentInfo selectTStudentInfoByStudentId(Long studentId)
    {
        return tStudentInfoMapper.selectTStudentInfoByStudentId(studentId);
    }

    /**
     * 查询学生信息列表
     *
     * @param tStudentInfo 学生信息
     * @return 学生信息
     */
    @Override
    public List<TStudentInfo> selectTStudentInfoList(TStudentInfo tStudentInfo)
    {
        return tStudentInfoMapper.selectTStudentInfoList(tStudentInfo);
    }

    /**
     * 新增学生信息
     *
     * @param tStudentInfo 学生信息
     * @return 结果
     */
    @Override
    public int insertTStudentInfo(TStudentInfo tStudentInfo)
    {
        // 生成学生编号
        tStudentInfo.setStudentNo(generateStudentNo(tStudentInfo.getParentId()));
        tStudentInfo.setCreateTime(DateUtils.getNowDate());
        tStudentInfo.setCreateBy(SecurityUtils.getUsername());
        return tStudentInfoMapper.insertTStudentInfo(tStudentInfo);
    }

    /**
     * 修改学生信息
     *
     * @param tStudentInfo 学生信息
     * @return 结果
     */
    @Override
    public int updateTStudentInfo(TStudentInfo tStudentInfo)
    {
        tStudentInfo.setUpdateTime(DateUtils.getNowDate());
        tStudentInfo.setUpdateBy(SecurityUtils.getUsername());
        return tStudentInfoMapper.updateTStudentInfo(tStudentInfo);
    }

    /**
     * 批量删除学生信息
     *
     * @param studentIds 需要删除的学生信息主键
     * @return 结果
     */
    @Override
    public int deleteTStudentInfoByStudentIds(Long[] studentIds)
    {
        return tStudentInfoMapper.deleteTStudentInfoByStudentIds(studentIds);
    }

    /**
     * 删除学生信息信息
     *
     * @param studentId 学生信息主键
     * @return 结果
     */
    @Override
    public int deleteTStudentInfoByStudentId(Long studentId)
    {
        return tStudentInfoMapper.deleteTStudentInfoByStudentId(studentId);
    }

    /**
     * 生成学生编号
     * 格式：家长编号 + 序号
     * 例如：家长编号为 HBS202511057437，第一个孩子为 HBS2025110574371，第二个孩子为 HBS2025110574372
     *
     * @param parentId 家长ID
     * @return 学生编号
     */
    private String generateStudentNo(Long parentId)
    {
        // 获取家长信息
        TParentInfo parent = tParentInfoMapper.selectTParentInfoByParentId(parentId);
        if (parent == null || parent.getParentNo() == null)
        {
            throw new RuntimeException("家长信息不存在或家长编号为空");
        }

        // 统计该家长已有的学生数量
        int studentCount = tStudentInfoMapper.countStudentsByParentId(parentId);

        // 生成学生编号：家长编号 + (学生数量 + 1)
        String studentNo = parent.getParentNo() + (studentCount + 1);

        // 检查编号是否重复，如果重复则递增序号
        TStudentInfo existStudent = tStudentInfoMapper.checkStudentNoUnique(studentNo);
        if (existStudent != null)
        {
            // 如果编号已存在，继续递增直到找到可用的编号
            int seq = studentCount + 2;
            while (existStudent != null)
            {
                studentNo = parent.getParentNo() + seq;
                existStudent = tStudentInfoMapper.checkStudentNoUnique(studentNo);
                seq++;
            }
        }

        return studentNo;
    }
}
