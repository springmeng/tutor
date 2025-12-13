package com.tutor.common.utils;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/**
 * 拼音工具类
 *
 * @author tutor
 */
public class PinyinUtils
{
    /**
     * 获取中文字符串的首字母大写拼音
     *
     * @param chineseStr 中文字符串
     * @return 首字母大写拼音，如："山东省" -> "SDS", "内蒙古自治区" -> "NMGZZQ"
     */
    public static String getFirstLetters(String chineseStr)
    {
        if (StringUtils.isEmpty(chineseStr))
        {
            return "";
        }

        StringBuilder result = new StringBuilder();
        HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
        // 设置大写
        format.setCaseType(HanyuPinyinCaseType.UPPERCASE);
        // 不带音调
        format.setToneType(HanyuPinyinToneType.WITHOUT_TONE);

        try
        {
            for (int i = 0; i < chineseStr.length(); i++)
            {
                char c = chineseStr.charAt(i);
                // 判断是否为汉字
                if (Character.toString(c).matches("[\\u4E00-\\u9FA5]+"))
                {
                    String[] pinyinArray = PinyinHelper.toHanyuPinyinStringArray(c, format);
                    if (pinyinArray != null && pinyinArray.length > 0)
                    {
                        // 取第一个拼音的首字母
                        result.append(pinyinArray[0].charAt(0));
                    }
                }
                else
                {
                    // 非汉字直接追加（如数字、字母等）
                    result.append(c);
                }
            }
        }
        catch (BadHanyuPinyinOutputFormatCombination e)
        {
            e.printStackTrace();
            return "";
        }

        return result.toString();
    }

    /**
     * 获取中文字符串的完整拼音
     *
     * @param chineseStr 中文字符串
     * @return 完整拼音，如："山东" -> "SHANDONG"
     */
    public static String getFullPinyin(String chineseStr)
    {
        if (StringUtils.isEmpty(chineseStr))
        {
            return "";
        }

        StringBuilder result = new StringBuilder();
        HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
        format.setCaseType(HanyuPinyinCaseType.UPPERCASE);
        format.setToneType(HanyuPinyinToneType.WITHOUT_TONE);

        try
        {
            for (int i = 0; i < chineseStr.length(); i++)
            {
                char c = chineseStr.charAt(i);
                if (Character.toString(c).matches("[\\u4E00-\\u9FA5]+"))
                {
                    String[] pinyinArray = PinyinHelper.toHanyuPinyinStringArray(c, format);
                    if (pinyinArray != null && pinyinArray.length > 0)
                    {
                        result.append(pinyinArray[0]);
                    }
                }
                else
                {
                    result.append(c);
                }
            }
        }
        catch (BadHanyuPinyinOutputFormatCombination e)
        {
            e.printStackTrace();
            return "";
        }

        return result.toString();
    }
}
