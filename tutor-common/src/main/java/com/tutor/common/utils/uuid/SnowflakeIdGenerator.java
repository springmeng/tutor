package com.tutor.common.utils.uuid;

/**
 * 雪花算法ID生成器
 * 生成10位数字ID用于用户ID
 *
 * 雪花算法结构 (64-bit):
 * - 1位: 符号位 (0)
 * - 39位: 时间戳 (ms)
 * - 5位: 数据中心ID (0-31)
 * - 5位: 机器ID (0-31)
 * - 12位: 序列号 (0-4095)
 *
 * 转换为10位数字ID: 取64位ID的后10位数字
 *
 * @author tutor
 * @date 2025-11-12
 */
public class SnowflakeIdGenerator
{
    // 起始时间戳 (2020-01-01)
    private static final long EPOCH = 1577836800000L;

    // 位移
    private static final long SEQUENCE_BITS = 12L;
    private static final long MACHINE_ID_BITS = 5L;
    private static final long DATA_CENTER_ID_BITS = 5L;

    // 最大值
    private static final long MAX_SEQUENCE = (1L << SEQUENCE_BITS) - 1;
    private static final long MAX_MACHINE_ID = (1L << MACHINE_ID_BITS) - 1;
    private static final long MAX_DATA_CENTER_ID = (1L << DATA_CENTER_ID_BITS) - 1;

    // 位移移动
    private static final long MACHINE_ID_SHIFT = SEQUENCE_BITS;
    private static final long DATA_CENTER_ID_SHIFT = SEQUENCE_BITS + MACHINE_ID_BITS;
    private static final long TIMESTAMP_SHIFT = SEQUENCE_BITS + MACHINE_ID_BITS + DATA_CENTER_ID_BITS;

    private long dataCenterId;
    private long machineId;
    private long sequence = 0L;
    private long lastTimestamp = -1L;

    /**
     * 构造函数
     *
     * @param dataCenterId 数据中心ID
     * @param machineId 机器ID
     */
    public SnowflakeIdGenerator(long dataCenterId, long machineId)
    {
        if (dataCenterId > MAX_DATA_CENTER_ID || dataCenterId < 0)
        {
            throw new IllegalArgumentException("dataCenterId can't be greater than MAX_DATA_CENTER_ID or less than 0");
        }
        if (machineId > MAX_MACHINE_ID || machineId < 0)
        {
            throw new IllegalArgumentException("machineId can't be greater than MAX_MACHINE_ID or less than 0");
        }
        this.dataCenterId = dataCenterId;
        this.machineId = machineId;
    }

    /**
     * 默认构造函数，使用默认的数据中心和机器ID
     */
    public SnowflakeIdGenerator()
    {
        this(0L, 0L);
    }

    /**
     * 获取下一个ID (64位long型)
     *
     * @return ID
     */
    public synchronized long nextId()
    {
        long timestamp = System.currentTimeMillis();

        if (timestamp < lastTimestamp)
        {
            throw new RuntimeException("Clock moved backwards. Refusing to generate id for " + (lastTimestamp - timestamp) + " millis");
        }

        if (timestamp == lastTimestamp)
        {
            sequence = (sequence + 1) & MAX_SEQUENCE;
            if (sequence == 0)
            {
                timestamp = tilNextMillis(lastTimestamp);
            }
        }
        else
        {
            sequence = 0L;
        }

        lastTimestamp = timestamp;

        return ((timestamp - EPOCH) << TIMESTAMP_SHIFT) |
               (dataCenterId << DATA_CENTER_ID_SHIFT) |
               (machineId << MACHINE_ID_SHIFT) |
               sequence;
    }

    /**
     * 获取下一个ID (字符串形式，10位数字)
     *
     * @return 10位数字ID
     */
    public String nextIdString()
    {
        long id = nextId();
        // 取ID的后10位数字，转换为10位字符串
        return String.format("%010d", id % 10000000000L);
    }

    /**
     * 等待直到下一毫秒
     *
     * @param lastTimestamp 最后一次生成ID的时间戳
     * @return 下一毫秒的时间戳
     */
    private long tilNextMillis(long lastTimestamp)
    {
        long timestamp = System.currentTimeMillis();
        while (timestamp <= lastTimestamp)
        {
            timestamp = System.currentTimeMillis();
        }
        return timestamp;
    }

    /**
     * 从64位ID中解析时间戳
     *
     * @param id 64位ID
     * @return 时间戳
     */
    public static long getTimestamp(long id)
    {
        return (id >> TIMESTAMP_SHIFT) + EPOCH;
    }

    /**
     * 从64位ID中解析数据中心ID
     *
     * @param id 64位ID
     * @return 数据中心ID
     */
    public static long getDataCenterId(long id)
    {
        return (id >> DATA_CENTER_ID_SHIFT) & ((1L << DATA_CENTER_ID_BITS) - 1);
    }

    /**
     * 从64位ID中解析机器ID
     *
     * @param id 64位ID
     * @return 机器ID
     */
    public static long getMachineId(long id)
    {
        return (id >> MACHINE_ID_SHIFT) & ((1L << MACHINE_ID_BITS) - 1);
    }

    /**
     * 从64位ID中解析序列号
     *
     * @param id 64位ID
     * @return 序列号
     */
    public static long getSequence(long id)
    {
        return id & MAX_SEQUENCE;
    }

    // 单例实例 - 供全局使用
    private static final SnowflakeIdGenerator INSTANCE = new SnowflakeIdGenerator(0, 0);

    /**
     * 获取全局唯一的ID
     *
     * @return 10位数字ID
     */
    public static String generateId()
    {
        return INSTANCE.nextIdString();
    }

    /**
     * 获取全局唯一的10位数字ID (Long型)
     *
     * @return 10位数字ID (0-9999999999)
     */
    public static long generateLongId()
    {
        long id = INSTANCE.nextId();
        // 对10000000000取模，确保ID始终在10位数字范围内
        return Math.abs(id) % 10000000000L;
    }
}
