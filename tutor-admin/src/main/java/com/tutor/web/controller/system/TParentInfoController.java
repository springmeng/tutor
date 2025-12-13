package com.tutor.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.tutor.common.annotation.Log;
import com.tutor.common.core.controller.BaseController;
import com.tutor.common.core.domain.AjaxResult;
import com.tutor.common.enums.BusinessType;
import com.tutor.system.domain.TParentInfo;
import com.tutor.system.service.ITParentInfoService;
import com.tutor.common.utils.poi.ExcelUtil;
import com.tutor.common.core.page.TableDataInfo;

/**
 * 家长信息Controller
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-05
 */
@RestController
@RequestMapping("/system/parentInfo")
public class TParentInfoController extends BaseController
{
    @Autowired
    private ITParentInfoService tParentInfoService;

    /**
     * 查询家长信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:parentInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(TParentInfo tParentInfo)
    {
        startPage();
        List<TParentInfo> list = tParentInfoService.selectTParentInfoList(tParentInfo);
        return getDataTable(list);
    }

    /**
     * 导出家长信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:parentInfo:export')")
    @Log(title = "家长信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TParentInfo tParentInfo)
    {
        List<TParentInfo> list = tParentInfoService.selectTParentInfoList(tParentInfo);
        ExcelUtil<TParentInfo> util = new ExcelUtil<TParentInfo>(TParentInfo.class);
        util.exportExcel(response, list, "家长信息数据");
    }

    /**
     * 获取家长信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:parentInfo:query')")
    @GetMapping(value = "/{parentId}")
    public AjaxResult getInfo(@PathVariable("parentId") Long parentId)
    {
        return success(tParentInfoService.selectTParentInfoByParentId(parentId));
    }

    /**
     * 新增家长信息
     */
    @PreAuthorize("@ss.hasPermi('system:parentInfo:add')")
    @Log(title = "家长信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TParentInfo tParentInfo)
    {
        return toAjax(tParentInfoService.insertTParentInfo(tParentInfo));
    }

    /**
     * 修改家长信息
     */
    @PreAuthorize("@ss.hasPermi('system:parentInfo:edit')")
    @Log(title = "家长信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TParentInfo tParentInfo)
    {
        return toAjax(tParentInfoService.updateTParentInfo(tParentInfo));
    }

    /**
     * 删除家长信息
     */
    @PreAuthorize("@ss.hasPermi('system:parentInfo:remove')")
    @Log(title = "家长信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{parentIds}")
    public AjaxResult remove(@PathVariable Long[] parentIds)
    {
        return toAjax(tParentInfoService.deleteTParentInfoByParentIds(parentIds));
    }
}
