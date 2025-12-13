package com.tutor.system.service;

import java.util.List;
import com.tutor.system.domain.TParentInfo;

/**
 * 家长信息Service接口
 *
 * @author tutor
 * @date 2025-11-05
 */
public interface ITParentInfoService
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
     * 批量删除家长信息
     *
     * @param parentIds 需要删除的家长信息主键集合
     * @return 结果
     */
    public int deleteTParentInfoByParentIds(Long[] parentIds);

    /**
     * 删除家长信息信息
     *
     * @param parentId 家长信息主键
     * @return 结果
     */
    public int deleteTParentInfoByParentId(Long parentId);

    /**
     * 根据openid查询家长信息
     *
     * @param openid 微信openid
     * @return 家长信息
     */
    public TParentInfo selectTParentInfoByOpenid(String openid);
}
