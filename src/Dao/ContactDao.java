package Dao;

import entity.Contact;
import entity.Contactnote;
import entity.Project;
import util.DBHelp;
import util.Page;
import util.rowmapper.BeanRowMapper;
import util.rowmapper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ContactDao {
    DBHelp dbHelp = new DBHelp();

    //添加联系人
    public void addcontact(Contact contact) {
        String sql = "insert into t_contact(name,sex,tel,email,companyname,address,qq,wechat,post,moblie,userid,projectid) values(?,?,?,?,?,?,?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql, contact.getName(), contact.getSex(), contact.getTel(), contact.getEmail(), contact.getCompanyname(), contact.getAddress(), contact.getQq(), contact.getWechat(), contact.getPost(), contact.getMoblie(), contact.getUserid(), contact.getProjectid());

    }

    //查找所有记录
    public List<Contact> findAlltxt(int id) {
        String sql = "select content createtime from t_contact where id = ?";
        return dbHelp.queryForList(sql, new BeanRowMapper<Contact>(Contact.class), id);
    }

    //联系人分页
    public Page<Contact> findAll(Integer pageNo) {
        int pageSize = 3;
        int startSize = (pageNo - 1) * pageSize;

        String sql = "SELECT id,name FROM t_contact LIMIT ?,?";
        List<Contact> contactList = dbHelp.queryForList(sql, new BeanRowMapper<Contact>(Contact.class), startSize, pageSize);


        Page<Contact> page = new Page<Contact>(total(), pageNo);
        page.setPageList(contactList);
        return page;
    }
    //记录分页
    public Page<Contactnote> findAllnote(Integer pageNo) {
        int pageSize = 3;
        int startSize = (pageNo - 1) * pageSize;

        String sql = "SELECT content,createtime FROM t_contactnote LIMIT ?,?";
        List<Contactnote> contactnoteList= dbHelp.queryForList(sql, new BeanRowMapper<Contactnote>(Contactnote.class), startSize, pageSize);


        Page<Contactnote> page = new Page<Contactnote>(totalnote(), pageNo);
        page.setPageList(contactnoteList);
        return page;
    }

    //联系人总记录数
    public Long total() {

        String sql = "select count(*) from t_contact";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });
    }
    //记录总记录数
    public Long totalnote() {

        String sql = "select count(*) from t_contactnote";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });
    }

    public Contact findById(int id){
        String sql = "SELECT * FROM t_contact WHERE id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Contact>(Contact.class),id);
    }
    public void additem(Contactnote contactnote){
        String sql = "insert into t_contactnote(content,createtime,contactid,userid,username,contactname) values(?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql,contactnote.getContent(),contactnote.getCreatetime(),contactnote.getContactid(),contactnote.getUserid(),contactnote.getUsername(),contactnote.getContactname());

    }
    public List<Contactnote> findContactNoteById(int contactid,int userid) {
        String sql = "select id,content,createtime,contactid,userid,username,contactname from t_contactnote where contactid = ? and userid = ?";
        return dbHelp.queryForList(sql,new BeanRowMapper<Contactnote>(Contactnote.class),contactid,userid);
    }
    //通过contactid获取name
    public Contact findNameByContactId(int contactid) {
        String sql = "select name from t_contact where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Contact>(Contact.class),contactid);
    }
    //通过contactid查到联系人信息
    public Contact findContactById(int id) {
        String sql = "select * from t_contact where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Contact>(Contact.class),id);
    }
    //通过id找到的联系人进行编辑
    public void editContactById(Contact contact,int id) {
        String sql = "update t_contact set name = ?,sex = ?,tel = ?,email = ?,companyname = ?,address = ?,qq = ?,wechat = ?,post = ?,moblie = ? where id = ?";
        dbHelp.executeUpdate(sql,contact.getName(),contact.getSex(),contact.getTel(),contact.getEmail(),contact.getCompanyname(),contact.getAddress(),contact.getQq(),contact.getWechat(),contact.getPost(),contact.getMoblie(),id);
    }
    //通过id删除联系人
    public void del(int id) {
        String sql = "delete from t_contact where id = ?";
        dbHelp.executeUpdate(sql,id);

    }
}
