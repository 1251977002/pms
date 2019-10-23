package Dao;

import entity.Message;
import util.DBHelp;
import util.Page;
import util.rowmapper.MapRowMapper;
import util.rowmapper.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class MessageDao {
    private DBHelp dbHelp = new DBHelp();

    public int save(Message message) {
        String sql = "insert into t_message(content,createtime,projectid,userid,username,type) values (?,?,?,?,?,?)";
        return dbHelp.executeSave(sql,message.getContent(),message.getCreatetime(),message.getProjectid(),message.getUserid(),message.getUsername(),message.getType());
    }

    public Page<Map<String, Object>> findByPage(Integer pageNo,int userid,int projectid){

        int pageSize = 3;
        int startSize = (pageNo -1)*pageSize;
        String sql = "SELECT id,content,createtime,projectid,userid,username,type,DATE(createtime) as time FROM t_message WHERE id IN (SELECT messageid from t_atmessage WHERE userid = ? AND projectid = ? ) limit ?,?";

        List<Map<String, Object>> mapList = dbHelp.queryForList(sql,new MapRowMapper(),userid,projectid,startSize,pageSize);
        Map<String,Object> result = new HashMap<String,Object>();
        Set<String> dateSet = new HashSet<String>();

        for(Map<String,Object> map : mapList){
            String datetime = String.valueOf(map.get("time"));
            dateSet.add(datetime);
            List<Map<String, Object>> tempList = (List<Map<String, Object>>) result.get(datetime);
            if(tempList == null){
                tempList = new ArrayList<Map<String,Object>>();
                tempList.add(map);
                result.put(datetime,tempList);
            }else{
                tempList.add(map);
            }
        }
        result.put("allDate",dateSet);
        Page<Map<String, Object>> page = new Page<Map<String, Object>>(total(userid,projectid),pageNo);
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        list.add(result);
        page.setPageList(list);
        return page;
    }
    /*
     * 总记录数
     * */
    public Long total(int userid,int projectid){

        String sql = "SELECT count(*) from t_atmessage WHERE userid = ? AND projectid = ? ";
        return dbHelp.executQuery(sql, new RowMapper<Long>() {
            @Override
            public Long mapperRow(ResultSet rs) throws SQLException {
                return rs.getLong(1);
            }
        },userid,projectid);

    }
}
