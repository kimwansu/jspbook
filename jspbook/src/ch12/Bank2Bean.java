package ch12;

// 클래스 불러오기
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class Bank2Bean
{
    // 멤버 변수 설정
    private int aid;
    private String aname;
    private int balance;
    
    // 데이터베이스 관련 변수 설정
    Connection conn = null;
    Statement stmt = null;
    PreparedStatement pstmt = null;
    
    // JNDI를 이용한 데이터베이스 연결 메서드
    public void connect()
    {
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context)initContext.lookup("java:/comp/env");
            DataSource ds = (DataSource)envContext.lookup("jdbc/mysql");
            conn = ds.getConnection();
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
    }
    
    // 커넥션 반환 메서드
    public void disconnect()
    {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        System.out.println("close");
    }
    
    // 테이블에서 데이터를 가져오는 메서드
    public void getData()
    {
        connect();
        try {
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM bank2");
            rs.next();
            aid = rs.getInt("aid");
            aname = rs.getString("aname");
            balance = rs.getInt("balance");
        } catch (Exception e) {
            System.out.println(aid + aname + balance);
            System.out.println(e);
        } finally {
            disconnect();
        }
    }
    
    // getter
    public int getAid()
    {
        return this.aid;
    }
    
    public String getAname()
    {
        return this.aname;
    }
    
    public int getBalance()
    {
        return this.balance;
    }
}
