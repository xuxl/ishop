package com.sinomaster.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 工具类- 日期处理 
 * @author xuxiaolong 
 * @date   2012-04-19
 */
public class DateUtils {
	private static SimpleDateFormat sdf = new SimpleDateFormat(
			"yyyy-MM-dd hh:mm:ss");

	/**
	 * 按照yyyy-MM-dd hh:mm:ss格式化
	 * 
	 * @param date
	 *            需要格式化的日期
	 * @return 格式化后的字符串
	 */
	public static String format(Date date) {
		return sdf.format(date);
	}

	/**
	 * 日期格式化
	 * 
	 * @param date
	 *            需要格式化的日期
	 * @param sdf
	 *            格式
	 * @return 格式化后的字符串
	 */
	public static String format(Date date, SimpleDateFormat sdf) {
		return sdf.format(date);
	}

	/**
	 * 日期格式化
	 * 
	 * @param date
	 *            需要格式化的日期
	 * @param formatStr
	 *            格式 如"yyyy-MM-dd"
	 * @return 格式化后的日期
	 */
	public static String format(Date date, String formatStr) {
		SimpleDateFormat tmpFormat = new SimpleDateFormat(formatStr);
		return tmpFormat.format(date);
	}

}
