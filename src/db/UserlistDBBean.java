package db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserlistDBBean {

		private static UserlistDBBean user=new UserlistDBBean();
		
		private UserlistDBBean() {
			
		}
		
		public static UserlistDBBean getInstance() {
			
			return user;
		}
		
		public static Connection getConnection(){
			
			Connection con=null;
			try {
				String jdbcUrl="jdbc:oracle:thin:@localhost:1521:orcl";
				String dbId="scott";
				String dbPass="tiger";
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return con;
		}
		
		public void close(Connection con, ResultSet rs,PreparedStatement pstmt) {
			if(rs!=null)
				try {
				rs.close();}catch(SQLException ex) {
					
				}
			if(pstmt!=null)
				try {
				pstmt.close();}catch(SQLException ex) {
					
				}
			if(con!=null)
				try {
				con.close();}catch(SQLException ex) {}
			
		}
		
		public void addUser(UserlistDataBean user) {
			
			String sql="";
			Connection con=getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			int number=1;
			Date bd=null;
		
		try {
			pstmt=con.prepareStatement("select userseq.nextval from dual");
			rs=pstmt.executeQuery();
			if(rs.next()) number=rs.getInt(1);
		
			
		
			
				sql="insert into userlist (num,name,id,pwd,bdate,addr,tel,email) values(?,?,?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, number);
				pstmt.setString(2, user.getName());
				pstmt.setString(3,user.getId());
				pstmt.setString(4, user.getPwd());
				pstmt.setString(5, user.getBdate());
				pstmt.setString(6, user.getAddr());
				pstmt.setString(7, user.getTel());
				pstmt.setString(8, user.getEmail());
				
				pstmt.executeUpdate();
				
			
			
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				close(con,rs,pstmt);
			}
		
		}
		
}
			

