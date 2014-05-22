package ch12;

import java.sql.*;

public class Transaction
{
    Connection conn;
    
    private Transaction()
    {
        this.Test1();
        this.Test2();
    }
    
    private void Test1()
    {
        try {
            
            conn.setAutoCommit(false);
            Statement stmt = conn.createStatement();
            stmt.addBatch("INSERT INTO table1 VALUES(1, 'test')");
            stmt.addBatch("UPDATE table2 SET memo='test'");
            int[] cnt = stmt.executeBatch();
            
        } catch (Exception e) {
        }
        
    }
    
    private void Test2()
    {
        try {
            
            PreparedStatement pstmt = conn.prepareStatement("UPDATE table1 SET memo=? WHERE num=?");
            pstmt.setString(1, "테스트1");
            pstmt.addBatch();
            pstmt.setString(2, "2");
            pstmt.addBatch();
            int[] cnt = pstmt.executeBatch();
            
        } catch (Exception e) {
        }
    }
}
