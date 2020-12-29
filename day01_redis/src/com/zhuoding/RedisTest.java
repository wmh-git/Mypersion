package com.zhuoding;

import org.junit.Test;
import redis.clients.jedis.Jedis;

import java.util.List;
import java.util.Set;

//单元测试  不能有返回值 和 参数
public class RedisTest {
    //测试存储字符串的值
    //创建Jedis对象
    Jedis jedis = new Jedis();
    @Test
    public void redisString(){

        //存字符串
        jedis.set("username","张三");
        jedis.set("age","18");
        //获去字符串
        System.out.println(jedis.get("username"));
        System.out.println(jedis.get("age"));
        //删除
        jedis.del("age");
        System.out.println(jedis.get("age"));

    }
    @Test
    public void redisHash(){
        jedis.hset("myhash1","username","李四");
        jedis.hset("myhash1","address","长沙");
        String username = jedis.hget("myhash1", "username");
        String address = jedis.hget("myhash1", "address");
        jedis.hdel("username");
        System.out.println(username);
        System.out.println(address);

    }
    //list
    @Test
    public  void redisList(){
        //村左边
        jedis.lpush("mylist1","a","b","c","b");
        List<String> list = jedis.lrange("mylist1", 0, 3);
        System.out.println(list);
    }
    //集合测试   set
    @Test
    public void redisSet(){
        jedis.sadd("myset1","a","b","c","d");
        //jedis.srem("myset1");
        Set<String> myset = jedis.smembers("myset1");
        System.out.println(myset);
    }
}
