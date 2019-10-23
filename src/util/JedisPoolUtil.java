package util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class JedisPoolUtil {
    private static JedisPool jedisPool;

    static {

        try {
            InputStream is = JedisPoolUtil.class.getClassLoader().getResourceAsStream("jedis.properties");
            Properties properties = new Properties();
            properties.load(is);
            String maxTotal = properties.getProperty("jedis.maxTotal");
            String maxIdel = properties.getProperty("jedis.maxIdel");
            String minIdel = properties.getProperty("jedis.minIdle");
            String host = properties.getProperty("jedis.host");
            String port = properties.getProperty("jedis.port");

            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxTotal(Integer.parseInt(maxTotal));
            config.setMaxIdle(Integer.parseInt(maxIdel));
            config.setMinIdle(Integer.parseInt(minIdel));

            jedisPool = new JedisPool(config, host, Integer.parseInt(port));



        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public static Jedis getJedis(){

        return jedisPool.getResource();
    }
}
