package com.tutor.system.service.impl;

import java.util.List;
import java.util.Random;
import com.tutor.common.utils.DateUtils;
import com.tutor.common.utils.StringUtils;
import com.tutor.common.utils.PinyinUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tutor.system.mapper.TParentInfoMapper;
import com.tutor.system.domain.TParentInfo;
import com.tutor.system.service.ITParentInfoService;

/**
 * 家长信息Service业务层处理
 *
 * @author tutor
 * @date 2025-11-05
 */
@Service
public class TParentInfoServiceImpl implements ITParentInfoService
{
    @Autowired
    private TParentInfoMapper tParentInfoMapper;

    /**
     * 查询家长信息
     *
     * @param parentId 家长信息主键
     * @return 家长信息
     */
    @Override
    public TParentInfo selectTParentInfoByParentId(Long parentId)
    {
        return tParentInfoMapper.selectTParentInfoByParentId(parentId);
    }

    /**
     * 查询家长信息列表
     *
     * @param tParentInfo 家长信息
     * @return 家长信息
     */
    @Override
    public List<TParentInfo> selectTParentInfoList(TParentInfo tParentInfo)
    {
        return tParentInfoMapper.selectTParentInfoList(tParentInfo);
    }

    /**
     * 新增家长信息
     *
     * @param tParentInfo 家长信息
     * @return 结果
     */
    @Override
    public int insertTParentInfo(TParentInfo tParentInfo)
    {
        // 生成家长编号
        tParentInfo.setParentNo(generateParentNo(tParentInfo.getProvince()));
        tParentInfo.setCreateTime(DateUtils.getNowDate());
        return tParentInfoMapper.insertTParentInfo(tParentInfo);
    }

    /**
     * 修改家长信息
     *
     * @param tParentInfo 家长信息
     * @return 结果
     */
    @Override
    public int updateTParentInfo(TParentInfo tParentInfo)
    {
        tParentInfo.setUpdateTime(DateUtils.getNowDate());
        return tParentInfoMapper.updateTParentInfo(tParentInfo);
    }

    /**
     * 批量删除家长信息
     *
     * @param parentIds 需要删除的家长信息主键
     * @return 结果
     */
    @Override
    public int deleteTParentInfoByParentIds(Long[] parentIds)
    {
        return tParentInfoMapper.deleteTParentInfoByParentIds(parentIds);
    }

    /**
     * 删除家长信息信息
     *
     * @param parentId 家长信息主键
     * @return 结果
     */
    @Override
    public int deleteTParentInfoByParentId(Long parentId)
    {
        return tParentInfoMapper.deleteTParentInfoByParentId(parentId);
    }

    /**
     * 生成家长编号
     * 格式：省份首字母大写 + 当前日期(yyyyMMdd) + 4位随机数
     * 例如：山东省 -> SDS20251105XXXX
     *      内蒙古自治区 -> NMGZZQ20251105XXXX
     *
     * @param province 省份
     * @return 家长编号
     */
    private String generateParentNo(String province)
    {
        // 使用拼音工具获取省份首字母大写
        String provinceCode = PinyinUtils.getFirstLetters(province);
        if (StringUtils.isEmpty(provinceCode))
        {
            provinceCode = "OT"; // 默认值（Other）
        }

        // 获取当前日期
        String dateStr = DateUtils.dateTimeNow("yyyyMMdd");

        // 生成4位随机数
        Random random = new Random();
        int randomNum = random.nextInt(9000) + 1000; // 1000-9999

        String parentNo = provinceCode + dateStr + randomNum;

        // 检查编号是否重复，如果重复则重新生成
        TParentInfo existParent = tParentInfoMapper.checkParentNoUnique(parentNo);
        if (existParent != null)
        {
            return generateParentNo(province);
        }

        return parentNo;
    }

    /**
     * 根据openid查询家长信息
     *
     * @param openid 微信openid
     * @return 家长信息
     */
    @Override
    public TParentInfo selectTParentInfoByOpenid(String openid)
    {
        return tParentInfoMapper.selectTParentInfoByOpenid(openid);
    }
}
