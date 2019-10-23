package util;

import java.util.UUID;

public class UUIDKEY {
    public static String getKeyWith(){
        return UUID.randomUUID().toString();
    }
    public  static  String getKey(){
        return UUID.randomUUID().toString().replace("-","");
    }
}
