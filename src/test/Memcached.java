package test;

import net.spy.memcached.AddrUtil;
import net.spy.memcached.MemcachedClient;
import net.spy.memcached.internal.OperationFuture;
import util.JedisPoolUtil;

import java.io.IOException;

public class Memcached {

    public static void main(String[] args) {

        try {
            MemcachedClient cache = new MemcachedClient(AddrUtil.getAddresses("127.0.0.1:11211"));
            String code = (String)cache.get("password");
            System.out.println(code);
            cache.delete("password");
            String code2 = (String)cache.get("password");
            System.out.println(code2);


        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}