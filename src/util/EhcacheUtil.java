package util;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class EhcacheUtil {
    private static CacheManager cacheManager = new CacheManager();

    //获取缓存内容，放入缓存空间
    public static void put(String cachename,String key,Object value){
        Cache cache = cacheManager.getCache(cachename);
        Element element = new Element(key,value);

        cache.put(element);
    }
    //拿到缓存空间中的值
    public static Object get(String cachename,String key){
        Cache cache = cacheManager.getCache(cachename);
        Element element = cache.get(key);
        if (element != null){
            return element.getObjectValue();
        }
        return null;
    }
    //删除缓存中的内容
    public static void del(String cachename,String key){
        Cache cache = cacheManager.getCache(cachename);
        cache.remove(key);
    }
}
