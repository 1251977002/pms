package service;

import Dao.TaskDao;
import entity.Task;
import org.apache.poi.ss.formula.functions.T;

import java.util.List;

public class TaskService {
    TaskDao taskDao = new TaskDao();

    public void addtask(Task task){
        taskDao.addtask(task);
    }
    public void updatetask(int id,Task task){
        taskDao.updateTask(id,task);
    }
    public List<Task> showAllTaskByGoalId(int id){
        return taskDao.showAllTaskByGoalId(id);
    }
    public List<Task> showAllTask(){
        return taskDao.showAllTask();
    }

    public List<Task> findTaskByUserId(int id) {
        return taskDao.findTaskByUserId(id);
    }
}
