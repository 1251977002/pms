package util;

public class StringUtil {
    public static boolean isEmpty(String str){
        return (str == null || "".equals(str));

    }
    public static boolean isNoEmpty(String str){
        return (str != null && !"".equals(str));
    }
}
