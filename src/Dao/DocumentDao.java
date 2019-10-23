package Dao;

import entity.Document;
import entity.Documentcomment;
import entity.Idea;
import entity.Ideacomment;
import util.DBHelp;
import util.Page;
import util.rowmapper.BeanRowMapper;
import util.rowmapper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class DocumentDao {
    DBHelp dbHelp = new DBHelp();

    public List<Document> findAll() {
        String sql= "select * from t_document";
        return dbHelp.queryForList(sql,new BeanRowMapper<Document>(Document.class));
    }
    //通过userid,projectid获取到documentid
    public Document findDocumentByUserIdAndProjectId(int id, int id1) {

        String sql = "select * from t_document where userid = ?,projectid = ?";
        return dbHelp.executQuery(sql, new BeanRowMapper<Document>(Document.class),id,id1);

    }
    //分页
    public Page<Document> findPage(Integer pageNo) {
        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;

        String sql = "SELECT * FROM t_document LIMIT ?,?";
        List<Document> documentList = dbHelp.queryForList(sql,new BeanRowMapper<Document>(Document.class),startSize,pageSize);


        Page<Document> page = new Page<Document>(total(),pageNo);
        page.setPageList(documentList);
        return page;
    }
    //总记录数
    public Long total(){

        String sql = "select count(*) from t_document";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });

    }
    //添加想法
    public void adddocument(Document document) {

        String sql = "insert into t_document(title,content,createtime,userid,projectid,username) values(?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql, document.getTitle(), document.getContent(), document.getCreatetime(), document.getUserid(), document.getProjectid(), document.getUsername());

    }

    public Document finddocumentid(int id) {
        String sql = "select * from t_document where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Document>(Document.class),id);
    }

    //评论分页
    public Page<Documentcomment> findByIdeaId(int documentid, Integer pageNo) {
        int pagesize = 3;
        int startSize = (pageNo - 1) * pagesize;
        String sql = "select id,content,createtime,userid,documentid,username from t_documentcomment where documentid = ? limit ?,?";
        List<Documentcomment> documentcommentList = dbHelp.queryForList(sql,new BeanRowMapper<Documentcomment>(Documentcomment.class),documentid,startSize,pagesize);

        Page<Documentcomment> page = new Page<Documentcomment>(total1(),pageNo);

        page.setPageList(documentcommentList);
        return page;
    }
    public Long total1() {

        String sql = "select count(*) from t_documentcomment";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });
    }

    public void adddocumentcomment(Documentcomment documentcomment) {
        String sql = "insert into t_documentcomment(content,createtime,userid,documentid,username) values(?,?,?,?,?)";
        dbHelp.executeUpdate(sql,documentcomment.getContent(), documentcomment.getCreatetime(), documentcomment.getUserid(), documentcomment.getDocumentid(), documentcomment.getUsername());
    }
}
