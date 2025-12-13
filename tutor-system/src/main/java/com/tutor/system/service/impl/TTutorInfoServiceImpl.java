package com.tutor.system.service.impl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tutor.common.utils.DateUtils;
import com.tutor.common.utils.StringUtils;
import com.tutor.common.utils.PinyinUtils;
import com.tutor.system.mapper.TTutorInfoMapper;
import com.tutor.system.mapper.TTutorQualificationMapper;
import com.tutor.system.domain.TTutorInfo;
import com.tutor.system.domain.TTutorQualification;
import com.tutor.system.service.ITTutorInfoService;

/**
 * 家教信息Service业务层处理
 *
 * @author tutor
 * @date 2025-11-04
 */
@Service
public class TTutorInfoServiceImpl implements ITTutorInfoService
{
    @Autowired
    private TTutorInfoMapper tTutorInfoMapper;

    @Autowired
    private TTutorQualificationMapper tTutorQualificationMapper;

    /**
     * 查询家教信息
     *
     * @param tutorId 家教信息主键
     * @return 家教信息
     */
    @Override
    public TTutorInfo selectTTutorInfoByTutorId(Long tutorId)
    {
        return tTutorInfoMapper.selectTTutorInfoByTutorId(tutorId);
    }

    /**
     * 根据openid查询家教信息
     *
     * @param openid 微信openid
     * @return 家教信息
     */
    @Override
    public TTutorInfo selectTTutorInfoByOpenid(String openid)
    {
        return tTutorInfoMapper.selectTTutorInfoByOpenid(openid);
    }

    /**
     * 查询家教信息列表
     *
     * @param tTutorInfo 家教信息
     * @return 家教信息
     */
    @Override
    public List<TTutorInfo> selectTTutorInfoList(TTutorInfo tTutorInfo)
    {
        return tTutorInfoMapper.selectTTutorInfoList(tTutorInfo);
    }

    /**
     * 按点赞数量查询家教信息列表（降序）
     *
     * @param tTutorInfo 家教信息
     * @param limit 限制数量
     * @return 家教信息集合
     */
    @Override
    public List<TTutorInfo> selectTTutorInfoListOrderByLike(TTutorInfo tTutorInfo, Integer limit)
    {
        return tTutorInfoMapper.selectTTutorInfoListOrderByLike(tTutorInfo, limit);
    }

    /**
     * 新增家教信息
     *
     * @param tTutorInfo 家教信息
     * @return 结果
     */
    @Transactional
    @Override
    public int insertTTutorInfo(TTutorInfo tTutorInfo)
    {
        // 生成家教编号
        String tutorNo = generateTutorNo(tTutorInfo.getProvince());
        tTutorInfo.setTutorNo(tutorNo);

        // 设置默认值
        if (StringUtils.isEmpty(tTutorInfo.getAuditStatus()))
        {
            tTutorInfo.setAuditStatus("0"); // 待审核
        }
        if (StringUtils.isEmpty(tTutorInfo.getStatus()))
        {
            tTutorInfo.setStatus("0"); // 正常
        }
        if (tTutorInfo.getServiceCount() == null)
        {
            tTutorInfo.setServiceCount(0);
        }
        if (tTutorInfo.getPoints() == null)
        {
            tTutorInfo.setPoints(0);
        }

        tTutorInfo.setCreateTime(DateUtils.getNowDate());
        int rows = tTutorInfoMapper.insertTTutorInfo(tTutorInfo);

        // 保存教师资格信息
        if (tTutorInfo.getQualification() != null && rows > 0)
        {
            TTutorQualification qualification = tTutorInfo.getQualification();
            qualification.setTutorId(tTutorInfo.getTutorId());
            tTutorQualificationMapper.insertTTutorQualification(qualification);
        }

        return rows;
    }

    /**
     * 修改家教信息
     *
     * @param tTutorInfo 家教信息
     * @return 结果
     */
    @Transactional
    @Override
    public int updateTTutorInfo(TTutorInfo tTutorInfo)
    {
        tTutorInfo.setUpdateTime(DateUtils.getNowDate());
        int rows = tTutorInfoMapper.updateTTutorInfo(tTutorInfo);

        // 更新教师资格信息
        if (tTutorInfo.getQualification() != null)
        {
            TTutorQualification qualification = tTutorInfo.getQualification();
            qualification.setTutorId(tTutorInfo.getTutorId());

            // 判断是新增还是更新
            TTutorQualification existQualification = tTutorQualificationMapper.selectTTutorQualificationByTutorId(tTutorInfo.getTutorId());
            if (existQualification != null)
            {
                tTutorQualificationMapper.updateTTutorQualification(qualification);
            }
            else
            {
                tTutorQualificationMapper.insertTTutorQualification(qualification);
            }
        }

        return rows;
    }

    /**
     * 批量删除家教信息
     *
     * @param tutorIds 需要删除的家教信息主键
     * @return 结果
     */
    @Override
    public int deleteTTutorInfoByTutorIds(Long[] tutorIds)
    {
        return tTutorInfoMapper.deleteTTutorInfoByTutorIds(tutorIds);
    }

    /**
     * 删除家教信息信息
     *
     * @param tutorId 家教信息主键
     * @return 结果
     */
    @Override
    public int deleteTTutorInfoByTutorId(Long tutorId)
    {
        return tTutorInfoMapper.deleteTTutorInfoByTutorId(tutorId);
    }

    /**
     * 审核家教信息
     *
     * @param tutorId 家教ID
     * @param auditStatus 审核状态（1通过 2拒绝）
     * @param auditRemark 审核备注
     * @return 结果
     */
    @Override
    public int auditTutorInfo(Long tutorId, String auditStatus, String auditRemark)
    {
        TTutorInfo tutorInfo = new TTutorInfo();
        tutorInfo.setTutorId(tutorId);
        tutorInfo.setAuditStatus(auditStatus);
        tutorInfo.setAuditTime(new Date());
        tutorInfo.setAuditRemark(auditRemark);
        return tTutorInfoMapper.updateTTutorInfo(tutorInfo);
    }

    /**
     * 自动审核通过超过24小时的待审核家教
     *
     * @return 结果
     */
    @Override
    @Transactional
    public int autoAuditPass()
    {
        return tTutorInfoMapper.autoAuditPass();
    }

    /**
     * 查询附近的家教老师（按距离排序）
     *
     * @param latitude 用户纬度
     * @param longitude 用户经度
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    @Override
    public List<TTutorInfo> selectNearbyTutors(Double latitude, Double longitude, Integer pageNum, Integer pageSize)
    {
        // 计算起始索引
        Integer offset = (pageNum - 1) * pageSize;
        return tTutorInfoMapper.selectNearbyTutors(latitude, longitude, offset, pageSize);
    }

    /**
     * 查询优秀家教老师（按点赞数排序）
     *
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    @Override
    public List<TTutorInfo> selectExcellentTutors(Integer pageNum, Integer pageSize)
    {
        // 计算起始索引
        Integer offset = (pageNum - 1) * pageSize;
        return tTutorInfoMapper.selectExcellentTutors(offset, pageSize);
    }

    /**
     * 按科目名称查询家教老师列表
     *
     * @param subjectName 科目名称
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    @Override
    public List<TTutorInfo> selectTutorsBySubject(String subjectName, Integer pageNum, Integer pageSize)
    {
        // 计算起始索引
        Integer offset = (pageNum - 1) * pageSize;
        return tTutorInfoMapper.selectTutorsBySubject(subjectName, offset, pageSize);
    }

    /**
     * 按年级ID查询家教老师列表
     *
     * @param gradeId 年级ID
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    @Override
    public List<TTutorInfo> selectTutorsByGrade(Long gradeId, Integer pageNum, Integer pageSize)
    {
        // 计算起始索引
        Integer offset = (pageNum - 1) * pageSize;
        return tTutorInfoMapper.selectTutorsByGrade(gradeId, offset, pageSize);
    }

    /**
     * 生成家教编号
     * 格式：省份首字母大写 + 当前日期(yyyyMMdd) + 4位随机数
     * 例如：山东省 -> SDS20251105XXXX
     *      内蒙古自治区 -> NMGZZQ20251105XXXX
     *
     * @param province 省份
     * @return 家教编号
     */
    private String generateTutorNo(String province)
    {
        // 使用拼音工具获取省份首字母大写
        String provinceCode = PinyinUtils.getFirstLetters(province);
        if (StringUtils.isEmpty(provinceCode))
        {
            provinceCode = "OT"; // 默认值
        }

        // 获取当前日期
        String dateStr = DateUtils.dateTimeNow("yyyyMMdd");

        // 生成4位随机数
        Random random = new Random();
        int randomNum = random.nextInt(9000) + 1000; // 1000-9999

        String tutorNo = provinceCode + dateStr + randomNum;

        // 检查编号是否重复，如果重复则重新生成
        TTutorInfo existTutor = tTutorInfoMapper.checkTutorNoUnique(tutorNo);
        if (existTutor != null)
        {
            return generateTutorNo(province);
        }

        return tutorNo;
    }
}
