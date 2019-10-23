package service;

import Dao.ProjectDao;
import entity.Project;
import util.Page;


import java.util.List;

public class ProjectService {
    private ProjectDao projectDao = new ProjectDao();

    public List<Project> findNameAndIntro(){
        return projectDao.selectNameAndIntro();
    }
    public int add(Project project){
        return projectDao.add(project);
    }

    public Page<Project> findByPage(Integer pageNo) {
        return projectDao.findAll(pageNo);
    }

    public  Project findProjectIdByUserId(int userid) {
        return projectDao.findProjectIdByUserId(userid);
    }

    public Project findprojectid(int id) {
        return projectDao.findProject(id);
    }
   /* public Project findprojectid(String name){
        return  projectDao.findprojectid(name);
    }*/
}
