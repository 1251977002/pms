package Dao;

import entity.Project;
import util.DBHelp;
import util.Page;
import util.rowmapper.BeanRowMapper;
import util.rowmapper.RowMapper;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ProjectDao {
    DBHelp dBhelp = new DBHelp();

    //分页
    public Page<Project> findAll(Integer pageNo){
        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;

        String sql = "SELECT id,name,content,createtime FROM t_project LIMIT ?,?";
        List<Project> projectList = dBhelp.queryForList(sql,new BeanRowMapper<Project>(Project.class),startSize,pageSize);


        Page<Project> page = new Page<Project>(total(),pageNo);
        page.setPageList(projectList);
        return page;
    }

    //添加项目名称和项目简介
    public int add(Project project){
        String sql = "insert into t_project(name,content,createtime) values(?,?,?)";
        return dBhelp.executeSave(sql,project.getName(),project.getContent(),project.getCreatetime());
    }
    //查找项目名称和项目简介
    public List<Project> selectNameAndIntro(){
        String sql = "SELECT id,name,content FROM t_project";
        return dBhelp.queryForList(sql,new BeanRowMapper<Project>(Project.class));
    }
    //总记录数
    public Long total(){

        String sql = "select count(*) from t_project";
        return dBhelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });

    }
    //通过session中的userid查到projectid
    public Project findProjectIdByUserId(int userid) {
        String sql = "SELECT projectid FROM t_userproject WHERE userid = ? AND role = lead";
        return dBhelp.executQuery(sql,new BeanRowMapper<Project>(Project.class),userid);

    }
    public Project findProjectByprojectid(int userid) {
        String sql = "SELECT projectid FROM t_userproject WHERE userid = ? AND role = lead";
        return dBhelp.executQuery(sql,new BeanRowMapper<Project>(Project.class),userid);

    }
    //找到该id对应的project，放在session中
    public Project findProject(int id) {
        String sql = "select * from t_project where id = ?";
        return dBhelp.executQuery(sql,new BeanRowMapper<Project>(Project.class),id);
    }

}
