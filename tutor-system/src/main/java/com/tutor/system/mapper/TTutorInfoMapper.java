package com.tutor.system.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tutor.system.domain.TTutorInfo;

/**
 * 家教信息Mapper接口
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-04
 */
public interface TTutorInfoMapper
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
    public List<TTutorInfo> selectTTutorInfoListOrderByLike(@Param("query") TTutorInfo tTutorInfo, @Param("limit") Integer limit);

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
     * 删除家教信息
     *
     * @param tutorId 家教信息主键
     * @return 结果
     */
    public int deleteTTutorInfoByTutorId(Long tutorId);

    /**
     * 批量删除家教信息
     *
     * @param tutorIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTTutorInfoByTutorIds(Long[] tutorIds);


    /**
     * 检查家教编号是否唯一
     *
     * @param tutorNo 家教编号
     * @return 结果
     */
    public TTutorInfo checkTutorNoUnique(String tutorNo);

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
     * @param offset 起始索引
     * @param limit 限制数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectNearbyTutors(@Param("latitude") Double latitude,
                                                @Param("longitude") Double longitude,
                                                @Param("offset") Integer offset,
                                                @Param("limit") Integer limit);

    /**
     * 查询优秀家教老师（按点赞数排序）
     *
     * @param offset 起始索引
     * @param limit 限制数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectExcellentTutors(@Param("offset") Integer offset, @Param("limit") Integer limit);

    /**
     * 按科目名称查询家教老师列表
     *
     * @param subjectName 科目名称
     * @param offset 起始索引
     * @param limit 限制数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectTutorsBySubject(@Param("subjectName") String subjectName,
                                                   @Param("offset") Integer offset,
                                                   @Param("limit") Integer limit);

    /**
     * 按年级ID查询家教老师列表
     *
     * @param gradeId 年级ID
     * @param offset 起始索引
     * @param limit 限制数量
     * @return 家教信息集合
     */
    public List<TTutorInfo> selectTutorsByGrade(@Param("gradeId") Long gradeId,
                                                 @Param("offset") Integer offset,
                                                 @Param("limit") Integer limit);
}
