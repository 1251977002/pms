package util;

import com.zaxxer.hikari.HikariDataSource;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import excption.DataAccessExcption;
import util.rowmapper.RowMapper;


public class DBHelp {

    private static String URL;
    private static String DRIVER;
    private static String USERNAME;
    private static String PWD;
    private static HikariDataSource hds;

    static {

        try {
            Properties prop = new Properties();
            InputStream is = DBHelp.class.getClassLoader().getResourceAsStream("db.properties");
            prop.load(is);

            URL = prop.getProperty("jdbc.url");
            DRIVER = prop.getProperty("jdbc.driver");
            USERNAME = prop.getProperty("jdbc.username");
            PWD = prop.getProperty("jdbc.pwd");
            hds = new HikariDataSource();
            hds.setDriverClassName(DRIVER);
            hds.setJdbcUrl(URL);
            hds.setUsername(USERNAME);
            hds.setPassword(PWD);

            hds.setMaximumPoolSize(10);
            hds.setConnectionTimeout(1000);


        } catch (IOException e) {
            e.printStackTrace();
        }


    }


    //CURD
    /*
     * 用于增删改
     * */
    public void executeUpdate(String sql, Object... params) {

        Connection conn = null;
        PreparedStatement sta = null;
        try {
            conn = getConnection();
            sta = conn.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                sta.setObject(i + 1, params[i]);
            }
            sta.executeUpdate();
        } catch (SQLException e) {
            throw new DataAccessExcption("SQL异常:" + sql, e);
        } finally {
            close(null, sta, conn);
        }
    }

    /*
    * 保存时返回id(只用在增 时)
    * */
    public int executeSave(String sql, Object... params) {

        Connection conn = null;
        PreparedStatement sta = null;
        int id = -1;
        try {
            conn = getConnection();
            sta = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            for (int i = 0; i < params.length; i++) {
                sta.setObject(i + 1, params[i]);
            }
            sta.executeUpdate();
            ResultSet rs = sta.getGeneratedKeys();
            if(rs.next()){
                id = rs.getInt(1);
            }
        } catch (SQLException e) {
            throw new DataAccessExcption("SQL异常:" + sql, e);
        } finally {
            close(null, sta, conn);
        }
        return  id;
    }

    /*
     * 查
     * */
    public <T> T executQuery(String sql, RowMapper<T> rowMapper, Object... params) {
        Connection conn = null;
        PreparedStatement sta = null;
        ResultSet rs = null;
        T obj = null;
        try {
            conn = getConnection();
            sta = conn.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                sta.setObject(i + 1, params[i]);
            }
            rs = sta.executeQuery();

            if (rs.next()) {
                obj = rowMapper.mapperRow(rs);
            }
        } catch (SQLException e) {
            throw new DataAccessExcption("SQL异常:" + sql, e);
        }  finally {
            close(rs, sta, conn);
        }
        return obj;

    }


    public <T> List<T> queryForList(String sql, RowMapper<T> rowMapper, Object... params) {
        Connection conn = null;
        PreparedStatement sta = null;
        ResultSet rs = null;
        List<T> list = new ArrayList<T>();
        try {
            conn = getConnection();
            sta = conn.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                sta.setObject(i + 1, params[i]);
            }
            rs = sta.executeQuery();

            while (rs.next()) {
                T obj = rowMapper.mapperRow(rs);
                list.add(obj);
            }
        } catch (SQLException e) {
            throw new DataAccessExcption("SQL异常:" + sql, e);
        }finally {
            close(rs, sta, conn);
        }
        return list;

    }

    /*
     *
     * 获取数据库连接
     * */
    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = hds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    /*
     * 释放资源
     * */
    public void close(ResultSet rs, PreparedStatement sta, Connection conn) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (sta != null) {
                    sta.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
