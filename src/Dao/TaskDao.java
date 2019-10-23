package Dao;

import entity.Task;
import util.DBHelp;
import util.rowmapper.BeanRowMapper;

import java.util.List;

public class TaskDao {
    DBHelp dbHelp = new DBHelp();

    //添加新任务
    public void addtask(Task task){
        String sql = "insert into t_task(name,content,state,level,begintime,endtime,username,createtime,userid,goalid) values(?,?,?,?,?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql,task.getName(),task.getContent(),task.getState(),task.getLevel(),task.getBegintime(),task.getEndtime(),task.getUsername(),task.getCreatetime(),task.getUserid(),task.getGoalid());
    }
    //编辑任务
    public void updateTask(int id,Task task){
        String sql = "update t_task set name = ?,content = ?,begintime = ?,endtime = ?,state = ?,level = ?,username = ? WHERE id = ?";
        dbHelp.executeUpdate(sql,task.getName(),task.getContent(),task.getBegintime(),task.getEndtime(),task.getState(),task.getLevel(),task.getUsername(),id);

    }
    //展示该目标id下的所有任务
    public List<Task> showAllTaskByGoalId(int id){
        String sql = "select * from t_task where goalid = ?";
        return dbHelp.queryForList(sql,new BeanRowMapper<Task>(Task.class),id);

    }
    //展示所有任务
    public List<Task> showAllTask(){
        String sql = "select * from t_task";
        return dbHelp.queryForList(sql,new BeanRowMapper<Task>(Task.class));

    }

    public List<Task> findTaskByUserId(int id) {
        String sql = "select id,name,content,state,level,begintime,endtime,createtime,userid,goalid,rate,username from t_task where userid = ?";
        return dbHelp.queryForList(sql,new BeanRowMapper<Task>(Task.class),id);
    }
}
