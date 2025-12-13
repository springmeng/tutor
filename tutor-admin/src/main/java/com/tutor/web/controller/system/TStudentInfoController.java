package com.tutor.web.controller.system;

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
import com.tutor.system.domain.TStudentInfo;
import com.tutor.system.service.ITStudentInfoService;
import com.tutor.common.utils.poi.ExcelUtil;
import com.tutor.common.core.page.TableDataInfo;

/**
 * 学生信息Controller
 *
 * @author：小孟微信：codemeng
 * @date 2025-11-05
 */
@RestController
@RequestMapping("/system/studentInfo")
public class TStudentInfoController extends BaseController
{
    @Autowired
    private ITStudentInfoService tStudentInfoService;

    /**
     * 查询学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:studentInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(TStudentInfo tStudentInfo)
    {
        startPage();
        List<TStudentInfo> list = tStudentInfoService.selectTStudentInfoList(tStudentInfo);
        return getDataTable(list);
    }

    /**
     * 导出学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:studentInfo:export')")
    @Log(title = "学生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TStudentInfo tStudentInfo)
    {
        List<TStudentInfo> list = tStudentInfoService.selectTStudentInfoList(tStudentInfo);
        ExcelUtil<TStudentInfo> util = new ExcelUtil<TStudentInfo>(TStudentInfo.class);
        util.exportExcel(response, list, "学生信息数据");
    }

    /**
     * 获取学生信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:studentInfo:query')")
    @GetMapping(value = "/{studentId}")
    public AjaxResult getInfo(@PathVariable("studentId") Long studentId)
    {
        return success(tStudentInfoService.selectTStudentInfoByStudentId(studentId));
    }

    /**
     * 新增学生信息
     */
    @PreAuthorize("@ss.hasPermi('system:studentInfo:add')")
    @Log(title = "学生信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TStudentInfo tStudentInfo)
    {
        return toAjax(tStudentInfoService.insertTStudentInfo(tStudentInfo));
    }

    /**
     * 修改学生信息
     */
    @PreAuthorize("@ss.hasPermi('system:studentInfo:edit')")
    @Log(title = "学生信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TStudentInfo tStudentInfo)
    {
        return toAjax(tStudentInfoService.updateTStudentInfo(tStudentInfo));
    }

    /**
     * 删除学生信息
     */
    @PreAuthorize("@ss.hasPermi('system:studentInfo:remove')")
    @Log(title = "学生信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{studentIds}")
    public AjaxResult remove(@PathVariable Long[] studentIds)
    {
        return toAjax(tStudentInfoService.deleteTStudentInfoByStudentIds(studentIds));
    }
}
