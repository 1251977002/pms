package util.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/*泛型接口*/
public interface RowMapper<T> {
    public T mapperRow(ResultSet rs) throws SQLException;
}
