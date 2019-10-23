package Dao;

import entity.User;
import util.DBHelp;
import util.rowmapper.BeanRowMapper;

import java.util.List;

public class UserDao {
   public DBHelp dBhelp = new DBHelp();
    //登录时通过usenrname获取到密码
   public User findByUsername(String username){
       String sql = "select id,username,password from t_user where username = ?";
       return dBhelp.executQuery(sql,new BeanRowMapper<User>(User.class), username);
   }
    //获取所有的username
    public List<User> findAllUser() {
       String sql = "select username from t_user";
       return dBhelp.queryForList(sql,new BeanRowMapper<User>(User.class));
    }
    //通过id 查找username
    public User findNameById(int id) {
       String sql = "select username from t_user where id = ?";
       return dBhelp.executQuery(sql,new BeanRowMapper<User>(User.class),id);
    }
    //通过username找到这个人
    public User findByName(String username) {
       String sql = "select * from t_user where username = ?";
       return dBhelp.executQuery(sql,new BeanRowMapper<User>(User.class),username);
    }
    //改密码
    public void updatePassword(Integer id, String password) {
        String sql = "update t_user set password = ? where id = ?";
        dBhelp.executeUpdate(sql,password,id);
    }
}
