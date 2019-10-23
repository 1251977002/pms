package util.rowmapper;

import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/*
* 列名和实体类的属性名字一致
* 并且实体类的属性数量必须大于等于查询出来的列数
*
* */
public class BeanRowMapper<T> implements RowMapper<T>{
    private Class<T> clazz;
    public BeanRowMapper(Class<T> clazz){
        this.clazz = clazz;
    }
    @Override
    public T mapperRow(ResultSet rs) throws SQLException {
        T obj = null;
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            obj = clazz.getDeclaredConstructor().newInstance();
            //获取查询的列数
            int count = rsmd.getColumnCount();
            for(int i = 1;i <= count;i++){
                //获取列名 (age)
                String columnLable = rsmd.getColumnLabel(i);
                //setAge
                String methodName = "set" + columnLable.substring(0,1).toUpperCase() + columnLable.substring(1);

                Method[] methods = clazz.getMethods();
                for(Method method : methods){
                    if(method.getName().equals(methodName)){
                        method.invoke(obj,rs.getObject(columnLable));
                        break;
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
    }
}
