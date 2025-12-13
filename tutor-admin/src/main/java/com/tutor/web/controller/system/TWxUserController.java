package com.tutor.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.tutor.common.annotation.Log;
import com.tutor.common.core.controller.BaseController;
import com.tutor.common.core.domain.AjaxResult;
import com.tutor.common.enums.BusinessType;
import com.tutor.system.domain.TWxUser;
import com.tutor.system.service.ITWxUserService;
import com.tutor.common.utils.poi.ExcelUtil;
import com.tutor.common.core.page.TableDataInfo;

/**
 * 微信用户信息Controller
 *
 * @author tutor
 * @date 2025-12-07
 */
@RestController
@RequestMapping("/system/wxUser")
public class TWxUserController extends BaseController
{
    @Autowired
    private ITWxUserService tWxUserService;

    /**
     * 查询微信用户信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:wxUser:list')")
    @GetMapping("/list")
    public TableDataInfo list(TWxUser tWxUser)
    {
        startPage();
        List<TWxUser> list = tWxUserService.selectTWxUserList(tWxUser);
        return getDataTable(list);
    }

    /**
     * 导出微信用户信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:wxUser:export')")
    @Log(title = "微信用户信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TWxUser tWxUser)
    {
        List<TWxUser> list = tWxUserService.selectTWxUserList(tWxUser);
        ExcelUtil<TWxUser> util = new ExcelUtil<TWxUser>(TWxUser.class);
        util.exportExcel(response, list, "微信用户信息数据");
    }

    /**
     * 获取微信用户信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:wxUser:query')")
    @GetMapping(value = "/{userId}")
    public AjaxResult getInfo(@PathVariable("userId") Long userId)
    {
        return success(tWxUserService.selectTWxUserByUserId(userId));
    }
}
