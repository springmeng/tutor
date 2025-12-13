package com.tutor.web.controller.system;

import java.util.List;
import java.util.Map;
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
import com.tutor.system.domain.TTutorInfo;
import com.tutor.system.service.ITTutorInfoService;
import com.tutor.common.utils.poi.ExcelUtil;
import com.tutor.common.core.page.TableDataInfo;

/**
 * 家教信息Controller
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-04
 */
@RestController
@RequestMapping("/system/tutorInfo")
public class TTutorInfoController extends BaseController
{
    @Autowired
    private ITTutorInfoService tTutorInfoService;

    /**
     * 查询家教信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:list')")
    @GetMapping("/list")
    public TableDataInfo list(TTutorInfo tTutorInfo)
    {
        startPage();
        List<TTutorInfo> list = tTutorInfoService.selectTTutorInfoList(tTutorInfo);
        return getDataTable(list);
    }

    /**
     * 导出家教信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:export')")
    @Log(title = "家教信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TTutorInfo tTutorInfo)
    {
        List<TTutorInfo> list = tTutorInfoService.selectTTutorInfoList(tTutorInfo);
        ExcelUtil<TTutorInfo> util = new ExcelUtil<TTutorInfo>(TTutorInfo.class);
        util.exportExcel(response, list, "家教信息数据");
    }

    /**
     * 获取家教信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:query')")
    @GetMapping(value = "/{tutorId}")
    public AjaxResult getInfo(@PathVariable("tutorId") Long tutorId)
    {
        return success(tTutorInfoService.selectTTutorInfoByTutorId(tutorId));
    }


    /**
     * 新增家教信息
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:add')")
    @Log(title = "家教信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TTutorInfo tTutorInfo)
    {
        return toAjax(tTutorInfoService.insertTTutorInfo(tTutorInfo));
    }

    /**
     * 修改家教信息
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:edit')")
    @Log(title = "家教信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TTutorInfo tTutorInfo)
    {
        return toAjax(tTutorInfoService.updateTTutorInfo(tTutorInfo));
    }

    /**
     * 删除家教信息
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:remove')")
    @Log(title = "家教信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{tutorIds}")
    public AjaxResult remove(@PathVariable Long[] tutorIds)
    {
        return toAjax(tTutorInfoService.deleteTTutorInfoByTutorIds(tutorIds));
    }

    /**
     * 审核家教信息
     */
    @PreAuthorize("@ss.hasPermi('system:tutor:edit')")
    @Log(title = "家教信息审核", businessType = BusinessType.UPDATE)
    @PutMapping("/audit")
    public AjaxResult audit(@RequestBody TTutorInfo tTutorInfo)
    {
        return toAjax(tTutorInfoService.auditTutorInfo(
            tTutorInfo.getTutorId(),
            tTutorInfo.getAuditStatus(),
            tTutorInfo.getAuditRemark()
        ));
    }
}
