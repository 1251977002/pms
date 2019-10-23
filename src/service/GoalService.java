package service;

import Dao.GoalDao;
import entity.Goal;

import java.util.List;

public class GoalService {
    GoalDao goalDao = new GoalDao();

    public List<Goal> findAll(){
        return goalDao.findAll();
    }
    public void addGoal(Goal goal){
        goalDao.addgoal(goal);
    }
    public void edit(Goal goal,int id){
        goalDao.editgoal(goal,id);
    }
    public Goal showThisGoal(int id){
        return goalDao.showThisGoal(id);
    }

}
