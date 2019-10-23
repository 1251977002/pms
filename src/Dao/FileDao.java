package Dao;


import entity.File;
import entity.Filetype;
import entity.Idea;
import util.DBHelp;
import util.Page;
import util.rowmapper.BeanRowMapper;
import util.rowmapper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class FileDao {
    DBHelp dbHelp = new DBHelp();

    public List<Filetype> findAll(int id) {
        String sql= "select * from t_filetype where userid = ?";
        return dbHelp.queryForList(sql,new BeanRowMapper<Filetype>(Filetype.class),id);
    }
    //分页
    public Page<File> findByPage(Integer pageNo) {
        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;

        String sql = "SELECT * FROM t_file LIMIT ?,?";
        List<File> fileList = dbHelp.queryForList(sql,new BeanRowMapper<File>(File.class),startSize,pageSize);


        Page<File> page = new Page<File>(total(),pageNo);
        page.setPageList(fileList);
        return page;
    }
    //总记录数
    public Long total(){

        String sql = "select count(*) from t_file";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });

    }
    //创建文件
    public void addfile(File file) {
        String sql = "insert into t_file(path,filename,filesize,createtime,filetypeid,userid,username) values(?,?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql,file.getPath(),file.getFilename(),file.getFilesize(),file.getCreatetime(),file.getFiletypeid(),file.getUserid(),file.getUsername());
    }
    //通过userid和projectid 查找到这个文件
    public File findThisFile(int id) {
        String sql = "select * from t_file where filetypeid = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<File>(File.class),id);
    }
    //通过userid和projectid找到该文件目录下的文件类型
    public List<File> findThisFileType(int id) {
        String sql = "select * from t_file where filetypeid = ?";
        return dbHelp.queryForList(sql,new BeanRowMapper<File>(File.class),id);
    }
    //filetype分页
    public Page<File> findByPagetype(Integer pageNo,Integer filetypeid){
        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;

        String sql = "SELECT * FROM t_file where filetypeid = ? LIMIT ?,?";
        List<File> ideaList = dbHelp.queryForList(sql,new BeanRowMapper<File>(File.class),filetypeid,startSize,pageSize);


        Page<File> page = new Page<File>(total1(),pageNo);
        page.setPageList(ideaList);
        return page;
    }
    //总记录数
    public Long total1(){

        String sql = "select count(*) from t_file";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });

    }
    //删除文件类型
    public void delFile(Integer fileid) {
        String sql = "DELETE FROM t_file WHERE id = ?";
        dbHelp.executeUpdate(sql,fileid);
    }
    //删除文件夹
    public void deFile(int fileTypeId) {
        String sql = "DELETE FROM t_filetype WHERE id = ?";
        dbHelp.executeUpdate(sql,fileTypeId);
    }

    public Filetype findByFileTypeId(int fileTypeId) {
        String sql = "select id,name,createtime,userid,projectid,status,size,username from t_filetype where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<Filetype>(Filetype.class),fileTypeId);

    }
    //新建文件
    public void save(File file) {
        String sql = "insert into t_file (path,filename,filesize,createtime,filetypeid,userid,username) values (?,?,?,?,?,?,?)";
        dbHelp.executeUpdate(sql,file.getPath(),file.getFilename(),file.getFilesize(),file.getCreatetime(),file.getFiletypeid(),file.getUserid(),file.getUsername());

    }

    public File findById(int fileId) {
        String sql = "select id,path,filename,filesize,createtime,filetypeid,userid,username from t_file where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<File>(File.class),fileId);
    }

    public File findfileByfileid(Integer fileid) {
        String sql = "select * from t_file where id = ?";
        return dbHelp.executQuery(sql,new BeanRowMapper<File>(File.class), fileid);
    }
}
