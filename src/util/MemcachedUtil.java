package util;

import net.spy.memcached.AddrUtil;
import net.spy.memcached.MemcachedClient;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MemcachedUtil {

    private static MemcachedClient cache;
    static {

        try {
            List<String> address = new ArrayList<String>();
            address.add("127.0.0.1:11211");
            cache = new MemcachedClient(AddrUtil.getAddresses(address));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void put(String key ,int seconds ,Object value){
        cache.add(key,seconds,value);
    }

    public static  void del(String key){
        cache.delete(key);
    }

    public static Object get(String key){
        return cache.get(key);
    }
}
