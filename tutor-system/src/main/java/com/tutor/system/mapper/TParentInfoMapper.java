package com.tutor.system.mapper;

import java.util.List;
import com.tutor.system.domain.TParentInfo;

/**
 * 家长信息Mapper接口
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-05
 */
public interface TParentInfoMapper
{
    /**
     * 查询家长信息
     *
     * @param parentId 家长信息主键
     * @return 家长信息
     */
    public TParentInfo selectTParentInfoByParentId(Long parentId);

    /**
     * 查询家长信息列表
     *
     * @param tParentInfo 家长信息
     * @return 家长信息集合
     */
    public List<TParentInfo> selectTParentInfoList(TParentInfo tParentInfo);

    /**
     * 新增家长信息
     *
     * @param tParentInfo 家长信息
     * @return 结果
     */
    public int insertTParentInfo(TParentInfo tParentInfo);

    /**
     * 修改家长信息
     *
     * @param tParentInfo 家长信息
     * @return 结果
     */
    public int updateTParentInfo(TParentInfo tParentInfo);

    /**
     * 删除家长信息
     *
     * @param parentId 家长信息主键
     * @return 结果
     */
    public int deleteTParentInfoByParentId(Long parentId);

    /**
     * 批量删除家长信息
     *
     * @param parentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTParentInfoByParentIds(Long[] parentIds);

    /**
     * 校验家长编号是否唯一
     *
     * @param parentNo 家长编号
     * @return 结果
     */
    public TParentInfo checkParentNoUnique(String parentNo);

    /**
     * 根据openid查询家长信息
     *
     * @param openid 微信openid
     * @return 家长信息
     */
    public TParentInfo selectTParentInfoByOpenid(String openid);
}
