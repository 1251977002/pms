package service;

import Dao.UserProjectDao;
import entity.User;
import entity.UserProject;

public class UserProjectService {
    UserProjectDao userProjectDao = new UserProjectDao();

    public void addlead(UserProject userProject){
        userProjectDao.addlead(userProject);
    }
    public void addmembers(UserProject project){
        userProjectDao.addmemebers(project);
    }
    public User findUserIdByusername(String username){
        return userProjectDao.findUserIdByusername(username);
    }
}
