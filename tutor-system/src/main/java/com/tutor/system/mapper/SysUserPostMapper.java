package com.tutor.system.mapper;

import java.util.List;
import com.tutor.system.domain.SysUserPost;

/**
 * 管理员与岗位关联表 数据层
 * 
 * @author ruoyi
 */
public interface SysUserPostMapper
{
    /**
     * 通过管理员ID删除管理员和岗位关联
     * 
     * @param userId 管理员ID
     * @return 结果
     */
    public int deleteUserPostByUserId(Long userId);

    /**
     * 通过岗位ID查询岗位使用数量
     * 
     * @param postId 岗位ID
     * @return 结果
     */
    public int countUserPostById(Long postId);

    /**
     * 批量删除管理员和岗位关联
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUserPost(Long[] ids);

    /**
     * 批量新增管理员岗位信息
     * 
     * @param userPostList 管理员岗位列表
     * @return 结果
     */
    public int batchUserPost(List<SysUserPost> userPostList);
}
