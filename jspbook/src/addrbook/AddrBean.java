package addrbook;

import java.sql.*;
import java.util.*;

public class AddrBean
{
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    // 데이터베이스 연결 정보
    String jdbc_driver = "com.mysql.jdbc.Driver";
    String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb";
    
    // 데이터베이스에 연결
    private void connect()
    {
        try {
            Class.forName(jdbc_driver);
            conn = DriverManager.getConnection(jdbc_url, "jspbook", "1234");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    // 데이터베이스 연결 끊기
    private void disconnect() {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    // 주소록 내용 수정
    public boolean updateDB(AddrBook addrbook)
    {
        connect();
        
        String sql = "UPDATE addrbook SET ab_name=?, ab_email=?, ab_birth=?, "
                + "ab_tel=?, ab_comdept=? ab_memo=? WHERE ab_id=?";
        
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, addrbook.getAb_name());
            pstmt.setString(2, addrbook.getAb_email());
            pstmt.setString(3, addrbook.getAb_birth());
            pstmt.setString(4, addrbook.getAb_tel());
            pstmt.setString(5, addrbook.getAb_comdept());
            pstmt.setString(6, addrbook.getAb_memo());
            pstmt.setInt(7, addrbook.getAb_id());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            disconnect();
        }
        
        return true;
    }
    
    // 주소록 글 삭제
    public boolean deleteDB(int ab_id)
    {
        connect();
        
        String sql = "DELETE FROM addrbook WHERE ab_id=?";
        
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, ab_id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            disconnect();
        }
        
        return true;
    }
    
    // 주소록 글 추가
    public boolean insertDB(AddrBook addrbook)
    {
        connect();
        
        String sql = "INSERT INTO addrbook(ab_name, ab_email, ab_birth, "
                + "ab_tel, ab_comdept, ab_memo) VALUES(?, ?, ?, ?, ?, ?)";
        
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, addrbook.getAb_name());
            pstmt.setString(2, addrbook.getAb_email());
            pstmt.setString(3, addrbook.getAb_birth());
            pstmt.setString(4, addrbook.getAb_tel());
            pstmt.setString(5, addrbook.getAb_comdept());
            pstmt.setString(6, addrbook.getAb_memo());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            disconnect();
        }
        
        return true;
    }
    
    // 주소록 글 가져오기
    public AddrBook getDB(int ab_id)
    {
        connect();
        
        String sql = "SELECT * FROM addrbook WHERE ab_id=?";
        AddrBook addrbook = new AddrBook();
        
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, ab_id);
            ResultSet rs = pstmt.executeQuery();
            
            // 데이터를 1개만 가져오므로 rs.next()는 한 번만 실행
            rs.next();
            addrbook.setAb_id(rs.getInt("ab_id"));
            addrbook.setAb_name(rs.getString("ab_name"));
            addrbook.setAb_email(rs.getString("ab_email"));
            addrbook.setAb_birth(rs.getString("ab_birth"));
            addrbook.setAb_tel(rs.getString("ab_tel"));
            addrbook.setAb_comdept(rs.getString("ab_comdept"));
            addrbook.setAb_memo(rs.getString("ab_memo"));
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            disconnect();
        }
        
        return addrbook;
    }
    
    // 전체 주소록 목록을 가져오기
    public ArrayList<AddrBook> getDBList()
    {
        connect();
        ArrayList<AddrBook> datas = new ArrayList<AddrBook>();
        
        String sql = "SELECT * FROM addrbook ORDER BY ab_id DESC";
        try {
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                AddrBook addrbook = new AddrBook();
                addrbook.setAb_id(rs.getInt("ab_id"));
                addrbook.setAb_name(rs.getString("ab_name"));
                addrbook.setAb_email(rs.getString("ab_email"));
                addrbook.setAb_birth(rs.getString("ab_birth"));
                addrbook.setAb_tel(rs.getString("ab_tel"));
                addrbook.setAb_comdept(rs.getString("ab_comdept"));
                addrbook.setAb_memo(rs.getString("ab_memo"));
                datas.add(addrbook);
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally { 
            disconnect();
        }
        
        return datas;
    }
}
