package Dao;

import entity.Filetype;
import util.DBHelp;
import util.Page;
import util.rowmapper.BeanRowMapper;
import util.rowmapper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class FileTypeDao {
    private DBHelp help = new DBHelp();
    public int save(Filetype fileType) {
        String sql = "insert into t_filetype (name,createtime,userid,status,username) values (?,?,?,?,?)";
        return help.executeSave(sql,fileType.getName(),fileType.getCreatetime(),fileType.getUserid(),fileType.getStatus(),fileType.getUsername());
    }

    public Page<Filetype> findByPage(Integer pageNo) {
        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;
        String sql = "select id,name,createtime,userid,status,size,username from t_filetype limit ?,?";
        List<Filetype> projectList = help.queryForList(sql,new BeanRowMapper<Filetype>(Filetype.class),startSize,pageSize);
        Page<Filetype> page = new Page<Filetype>(total(),pageNo);
        page.setPageList(projectList);
        return page;
    }
    /*
     * 总记录数
     * */
    public Long total(){

        String sql = "select count(*) from t_filetype";
        return help.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        });

    }

    public Filetype findByFileTypeId(int fileTypeId) {
        String sql = "select id,name,createtime,userid,projectid,status,size,username from t_filetype where id = ?";
        return help.executQuery(sql,new BeanRowMapper<Filetype>(Filetype.class),fileTypeId);
    }
}
