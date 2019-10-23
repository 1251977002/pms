package service;

import Dao.UserDao;
import entity.User;

import java.util.List;


public class UserService {
    private UserDao userDao = new UserDao();

    public User findByNameAndPassWord(String username){
        return userDao.findByUsername(username);
    }
    public List<User> findAllUser(){
        return userDao.findAllUser();
    }

    public User findNameById(int id) {
        return userDao.findNameById(id);
    }

    public User findByName(String username) {
        return userDao.findByName(username);
    }

    public void updatePassword(Integer id, String password) {
        userDao.updatePassword(id,password);
    }
}
