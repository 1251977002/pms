package service;

import Dao.ContactDao;
import entity.Contact;
import entity.Contactnote;
import entity.Project;
import util.Page;

import java.util.List;

public class ContactService {
    ContactDao contactDao = new ContactDao();

    public void addcontact(Contact contact){
        contactDao.addcontact(contact);
    }
    //查找所有记录
    public List<Contact> findAlltxt(int id){
        return contactDao.findAlltxt(id);

    }
    //联系人分页
    public Page<Contact> findByPage(Integer pageNo) {
        return contactDao.findAll(pageNo);
    }
    //记录分页
    public Page<Contactnote> findnotePage(Integer pageNo){
        return contactDao.findAllnote(pageNo);
    }
    //通过contactid查到记录
    public Contact findById(int id){
        return contactDao.findById(id);
    }
    //添加记录
    public void additem(Contactnote contactnote){
        contactDao.additem(contactnote);
    }
    //通过id查找记录
    public List<Contactnote> findContactNoteById(int contactid,int userid){
        return contactDao.findContactNoteById(contactid,userid);
    }
    //通过contactid查找name
    public Contact findNameByContactId(int contactid) {
        return contactDao.findNameByContactId(contactid);
    }

    public Contact findContactById(int id) {
        return contactDao.findContactById(id);
    }

    public void editcontact(Contact contact,int id) {
        contactDao.editContactById(contact,id);
    }

    public void del(int id) {
        contactDao.del(id);
    }
}
