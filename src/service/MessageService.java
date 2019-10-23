package service;

import Dao.MessageDao;
import entity.Message;
import entity.User;
import util.DateUtil;
import util.Page;

import java.util.Map;

public class MessageService {
    private MessageDao messageDao = new MessageDao();

    public Page<Map<String, Object>> findByPage(Integer valueOf, int userid, int projectid) {
        return messageDao.findByPage(valueOf,userid,projectid);
    }
    public int save(String content, User user, int projectid, int type) {
        String caretetime = DateUtil.getStringDate();
        Message message = new Message();
        message.setContent(content);
        message.setCreatetime(caretetime);
        message.setProjectid(projectid);
        message.setUserid(user.getId());
        message.setUsername(user.getUsername());
        message.setType(type);
        return messageDao.save(message);

    }
}
