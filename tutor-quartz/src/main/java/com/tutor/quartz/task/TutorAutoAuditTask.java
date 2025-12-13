package com.tutor.quartz.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.tutor.system.service.ITTutorInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 家教信息自动审核定时任务
 *
 * @author tutor
 * @date 2025-11-05
 */
@Component("tutorAutoAuditTask")
public class TutorAutoAuditTask
{
    private static final Logger log = LoggerFactory.getLogger(TutorAutoAuditTask.class);

    @Autowired
    private ITTutorInfoService tutorInfoService;

    /**
     * 执行家教信息24小时自动审核通过任务
     *
     * 执行方法：tutorAutoAuditTask.execute()
     */
    public void execute()
    {
        log.info("==================== 开始执行家教信息24小时自动审核任务 ====================");
        try
        {
            if (tutorInfoService == null) {
                log.error("tutorInfoService 为 null，无法执行自动审核");
                return;
            }

            log.info("调用 tutorInfoService.autoAuditPass() 方法...");
            int count = tutorInfoService.autoAuditPass();
            log.info("==================== 家教信息24小时自动审核任务执行完成，共审核通过 {} 条记录 ====================", count);

            if (count == 0) {
                log.info("提示：没有符合自动审核条件的记录（待审核且创建时间超过24小时）");
            }
        }
        catch (Exception e)
        {
            log.error("==================== 家教信息24小时自动审核任务执行失败 ====================", e);
            log.error("异常详细信息：", e);
        }
    }

    /**
     * 执行家教信息24小时自动审核通过任务（带参数）
     *
     * @param params 参数
     */
    public void execute(String params)
    {
        log.info("开始执行家教信息24小时自动审核任务，参数：{}", params);
        execute();
    }
}
