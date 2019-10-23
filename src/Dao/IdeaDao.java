package Dao;

import entity.Idea;
import entity.Ideacomment;
import entity.Project;
import entity.User;
import util.DBHelp;
import util.Page;
import util.rowmapper.BeanRowMapper;
import util.rowmapper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class IdeaDao {
    DBHelp dbHelp = new DBHelp();
    //添加想法
    public void addidea(Idea idea){
        String sql = "insert into t_idea(title,content,createtime,userid,projectid,username) values(?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql,idea.getTitle(),idea.getContent(),idea.getCreatetime(),idea.getUserid(),idea.getProjectid(),idea.getUsername());
    }

    public User findNameById(int id) {
        String sql = "select * from t_user where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<User>(User.class),id);

    }
    public List<Idea> findAllIdea() {
        String sql= "select * from t_idea";
        return dbHelp.queryForList(sql,new BeanRowMapper<Idea>(Idea.class));
    }

    //分页
    public Page<Idea> findAll(Integer pageNo){
        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;

        String sql = "SELECT * FROM t_idea LIMIT ?,?";
        List<Idea> ideaList = dbHelp.queryForList(sql,new BeanRowMapper<Idea>(Idea.class),startSize,pageSize);


        Page<Idea> page = new Page<Idea>(total(),pageNo);
        page.setPageList(ideaList);
        return page;
    }
    //总记录数
    public Long total(){

        String sql = "select count(*) from t_idea";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });

    }
    //通过userid获取到ideaid
    public Idea findIdeaIdByUserId(int id) {
        String sql = "select * from t_idea where userid = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Idea>(Idea.class),id);
    }
    //通过获取到的id来得到idea对象，放进session中
    public Idea findIdeaid(int id) {
        String sql = "select * from t_idea where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Idea>(Idea.class),id);
    }

    public void addcomment(Ideacomment ideacomment) {
        String sql = "insert into t_ideacomment(content,createtime,userid,ideaid,username) values(?,?,?,?,?)";
        dbHelp.executeUpdate(sql,ideacomment.getContent(),ideacomment.getCreatetime(),ideacomment.getUserid(),ideacomment.getIdeaid(),ideacomment.getUsername());
    }
    //展示所有评论
    public List<Ideacomment> finaAllComment() {
        String sql = "select * from t_ideacomment order by createtime desc";
        return dbHelp.queryForList(sql,new BeanRowMapper<Ideacomment>(Ideacomment.class));
    }

    //评论分页
    public Page<Ideacomment> findByIdeaId(int ideaid, Integer pageNo) {
        int pagesize = 3;
        int startSize = (pageNo - 1) * pagesize;
        String sql = "select id,content,createtime,userid,ideaid,username from t_ideacomment where ideaid = ? limit ?,?";
        List<Ideacomment> ideacommentList = dbHelp.queryForList(sql,new BeanRowMapper<Ideacomment>(Ideacomment.class),ideaid,startSize,pagesize);

        Page<Ideacomment> page = new Page<Ideacomment>(total1(),pageNo);

        page.setPageList(ideacommentList);
        return page;
    }
    public Long total1() {

        String sql = "select count(*) from t_ideacomment";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });
    }

    public void save(Idea idea) {
        String sql = "insert into t_idea (title,content,createtime,userid,projectid,username) values (?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql,idea.getTitle(),idea.getContent(),idea.getCreatetime(),idea.getUserid(),idea.getProjectid(),idea.getUsername());
    }
    /*//获取最大时间
    public List<Ideacomment> findByTime(String maxTime) {
        String sql = "SELECT id,content,createtime FROM t_ideacomment WHERE createtime > ? ORDER BY createtime DESC";
        return dbHelp.queryForList(sql,new BeanRowMapper<Ideacomment>(Ideacomment.class),maxTime);
    }*/
}
