package service;

import Dao.IdeaDao;
import entity.Idea;
import entity.Ideacomment;
import entity.Project;
import entity.User;
import util.DateUtil;
import util.Page;

import java.util.List;

public class IdeaService {
    IdeaDao ideaDao = new IdeaDao();

    public void save(String title, String content, User user, Project project) {
        Idea idea = new Idea();
        idea.setTitle(title);
        idea.setContent(content);
        idea.setCreatetime(DateUtil.getStringDate());
        idea.setUserid(user.getId());
        idea.setProjectid(project.getId());
        idea.setUsername(user.getUsername());
        ideaDao.save(idea);
    }

    public Page<Ideacomment> findByIdeaId(int ideaid ,Integer pageNo) {
        return ideaDao.findByIdeaId(ideaid,pageNo);
    }


    //添加想法
    public void addidea(Idea idea){
        ideaDao.addidea(idea);
    }
    //获取用户名
    public User findNameById(int id) {
        return ideaDao.findNameById(id);
    }
    //获取该用户创建的想法
    public List<Idea> findAllIdea() {
        return ideaDao.findAllIdea();
    }

    public Page<Idea> findByPage(Integer pageNo) {
        return ideaDao.findAll(pageNo);
    }
    //通过userid获取到ideaid
    public Idea findIdeaIdByUserId(int id) {
        return ideaDao.findIdeaIdByUserId(id);
    }

    public Idea findIdeaid(int id) {
        return ideaDao.findIdeaid(id);
    }

    public void addcomment(Ideacomment ideacomment) {
       ideaDao.addcomment(ideacomment);

    }

    public List<Ideacomment> findAllComment() {
        return ideaDao.finaAllComment();
    }
    /*public List<Ideacomment> findByTime(String maxTime) {
        return ideaDao.findByTime(maxTime);
    }*/

}
