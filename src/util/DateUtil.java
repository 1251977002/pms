package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //格式化当前日期
    public  static String getStringDate(){
        Date date = new Date();
        return sdf.format(date);
    }
    //把格式化后的日期变成正常的日期
    public static String getStringDate(Date date){
        return sdf.format(date);
    }
}
