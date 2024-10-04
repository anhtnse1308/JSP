package sample.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;




public class DBUtils {
    
    //nay` la ket noi binh` thuong`
//    public static Connection getConnection1() throws ClassNotFoundException, SQLException{
//        Connection conn = null;
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        String url = "jdbc:sqlserver://localhost:1433;databaseName=UserManagement1";
//        conn = DriverManager.getConnection(url, "sa", "12");
//        return conn;
//    }
    
    
    // cai nay la vo trong web-inf voi context.xml sau thanh` cau' hinh` dong
    public static Connection getConnection() throws NamingException, SQLException{
        Connection conn = null;
        Context context = new InitialContext();
        Context end = (Context) context.lookup("java:comp/env");
        DataSource ds = (DataSource) end.lookup("DBCon");
        conn = ds.getConnection();
                return conn;
    }
    
}
