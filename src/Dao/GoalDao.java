package Dao;

import entity.Goal;

import util.DBHelp;
import util.rowmapper.BeanRowMapper;

import java.util.List;

public class GoalDao {
    DBHelp dbHelp = new DBHelp();

    //查找所有目标
    public List<Goal> findAll(){
        String sql = "SELECT id,name,content FROM t_goal";
        return dbHelp.queryForList(sql,new BeanRowMapper<Goal>(Goal.class));
    }
    //添加一个新目标
    public void addgoal(Goal goal){
        String sql = "insert into t_goal(name,content,createtime,userid,projectid) values(?,?,?,?,?)";
        dbHelp.executeUpdate(sql,goal.getName(),goal.getContent(),goal.getCareatetime(),goal.getUserid(),goal.getProjectid());
    }
    //通过id找到要编辑的目标
    /*public Goal finaGoalById(int id){
        String sql = "select name,content from t_goal where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Goal>(Goal.class),id);
    }*/
    //编辑目标
    public void editgoal(Goal goal,int id){
        String sql = "update t_goal set name = ?,content = ? where id = ?";
        dbHelp.executeUpdate(sql,goal.getName(),goal.getContent(),id);
    }
    //通过id查找这个目标并展示出来
    public Goal showThisGoal(int id){
        String sql = "SELECT id,name,content FROM t_goal WHERE id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Goal>(Goal.class),id);
    }

}
