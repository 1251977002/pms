package Dao;

import entity.Project;
import entity.User;
import entity.UserProject;
import util.DBHelp;

import util.rowmapper.BeanRowMapper;

import java.util.List;

public class UserProjectDao {
    DBHelp dBhelp = new DBHelp();


    //添加一个项目的负责人
    public void addlead(UserProject project){
        String sql = "insert into t_userproject(userid,projectid,role,username) values(?,?,?,?)";
        dBhelp.executeUpdate(sql,project.getUserid(),project.getProjectid(),project.getRole(),project.getUsername());
    }
    //添加一个项目的成员
    public void addmemebers(UserProject project){
        String sql = "insert into t_userproject(userid,projectid,role,username) values(?,?,?,?)";
        dBhelp.executeUpdate(sql,project.getUserid(),project.getProjectid(),project.getRole(),project.getUsername());
    }
    //通过username查到userid
    public User findUserIdByusername(String username) {
        String sql = "select * from t_user where username = ?";
        return dBhelp.executQuery(sql,new BeanRowMapper<User>(User.class),username);
    }

}
