package com.tutor.system.service;

import java.util.List;
import java.util.Map;
import com.tutor.system.domain.TTutorInfo;

/**
 * 家教信息Service接口
 *
 * @author tutor
 * @date 2025-11-04
 */
public interface ITTutorInfoService
{
    /**
     * 查询家教信息
     *
     * @param tutorId 家教信息主键
     * @return 家教信息
     */
    public TTutorInfo selectTTutorInfoByTutorId(Long tutorId);

    /**
     * 根据openid查询家教信息
     *
     * @param openid 微信openid
     * @return 家教信息
     */
    public TTutorInfo selectTTutorInfoByOpenid(String openid);

    /**
     * 查询家教信息列表
     *
     * @param tTutorInfo 家教信息
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectTTutorInfoList(TTutorInfo tTutorInfo);

    /**
     * 按点赞数量查询家教信息列表（降序）
     *
     * @param tTutorInfo 家教信息
     * @param limit 限制数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectTTutorInfoListOrderByLike(TTutorInfo tTutorInfo, Integer limit);

    /**
     * 新增家教信息
     *
     * @param tTutorInfo 家教信息
     * @return 结果
     */
    public int insertTTutorInfo(TTutorInfo tTutorInfo);

    /**
     * 修改家教信息
     *
     * @param tTutorInfo 家教信息
     * @return 结果
     */
    public int updateTTutorInfo(TTutorInfo tTutorInfo);

    /**
     * 批量删除家教信息
     *
     * @param tutorIds 需要删除的家教信息主键集合
     * @return 结果
     */
    public int deleteTTutorInfoByTutorIds(Long[] tutorIds);

    /**
     * 删除家教信息信息
     *
     * @param tutorId 家教信息主键
     * @return 结果
     */
    public int deleteTTutorInfoByTutorId(Long tutorId);

    /**
     * 审核家教信息
     *
     * @param tutorId 家教ID
     * @param auditStatus 审核状态（1通过 2拒绝）
     * @param auditRemark 审核备注
     * @return 结果
     */
    public int auditTutorInfo(Long tutorId, String auditStatus, String auditRemark);

    /**
     * 自动审核通过超过24小时的待审核家教
     *
     * @return 结果
     */
    public int autoAuditPass();

    /**
     * 查询附近的家教老师（按距离排序）
     *
     * @param latitude 用户纬度
     * @param longitude 用户经度
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectNearbyTutors(Double latitude, Double longitude, Integer pageNum, Integer pageSize);

    /**
     * 查询优秀家教老师（按点赞数排序）
     *
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectExcellentTutors(Integer pageNum, Integer pageSize);

    /**
     * 按科目名称查询家教老师列表
     *
     * @param subjectName 科目名称
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectTutorsBySubject(String subjectName, Integer pageNum, Integer pageSize);

    /**
     * 按年级ID查询家教老师列表
     *
     * @param gradeId 年级ID
     * @param pageNum 页码
     * @param pageSize 每页数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectTutorsByGrade(Long gradeId, Integer pageNum, Integer pageSize);
}
