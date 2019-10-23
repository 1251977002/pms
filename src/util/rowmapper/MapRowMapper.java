package util.rowmapper;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class MapRowMapper implements RowMapper<Map<String, Object>> {
    @Override
    public Map<String, Object> mapperRow(ResultSet rs) throws SQLException {

        ResultSetMetaData rsmd = rs.getMetaData();
        int count = rsmd.getColumnCount();
        Map<String,Object> map = new HashMap<String,Object>();
        for(int i = 1;i <= count;i++){
            String columnLable = rsmd.getColumnLabel(i);
            Object columnValue = rs.getObject(columnLable);
            map.put(columnLable,columnValue);
        }

        return map;
    }
}
