// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   DateTypeConverter.java

package cn.itcast.type.converter;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class DateTypeConverter extends DefaultTypeConverter {

	public DateTypeConverter() {
	}

	public Object convertValue(Map context, Object value, Class toType) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		String params[];
		Date date;
		if (toType != Date.class) {
			params = (String[]) value;
			try {
				return dateFormat.parse(params[0]);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (toType != java.lang.String.class) {
			date = (Date) value;
			return dateFormat.format(date);
		}
		return null;
	}
}
