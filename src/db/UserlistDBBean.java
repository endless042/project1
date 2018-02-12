package db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


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
			
			int number=0;
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
		
	public UserlistDataBean getUser(String id, String pwd) {
			
			
			Connection con=getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="";
			UserlistDataBean user=null;
			
			try {
				con=getConnection();
				
			
				sql="select * from userlist where id=? and pwd=?";
				pstmt=con.prepareStatement(sql);
				
				pstmt.setString(1, id);
				pstmt.setString(2, pwd);
				
				rs=pstmt.executeQuery();
				
				user=new UserlistDataBean();
				if(rs.next()) {
						
					user.setNum(rs.getInt("num"));
					user.setUlevel(rs.getString("ulevel"));
					user.setName(rs.getString("name"));
					user.setId(rs.getString("id"));
					user.setPwd(rs.getString("pwd"));
					user.setBdate(rs.getString("bdate"));
					user.setAddr(rs.getString("addr"));
					user.setTel(rs.getString("tel"));
					user.setEmail(rs.getString("email"));
					user.setCdate(rs.getDate("cdate"));

					
			
				
				}	else {return null;}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close(con, rs, pstmt);
			}
				
			return user;
		
		}
	
	public int loginCheck(String id,String pwd) {
		int ck=-1;
		
		Connection con=getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		UserlistDataBean user=null;
		
		try {
			con=getConnection();
			
		
			sql="select * from userlist where id=? and pwd=?";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rs=pstmt.executeQuery();
			
			user=new UserlistDataBean();
			if(rs.next()) {
					
				ck=0;
		
			
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con, rs, pstmt);
		}
		
		
		return ck;
		
		
		
	}
		
	
public List getUsers(int startRow, int endRow) {
		
		
		Connection con=getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List users=null;
		String sql="";
		
		try {
			con=getConnection();
			sql="select * from (" + 
					"select rownum rum , b.* from (" + 
					"select a.* from userlist a  ORDER BY cdate DESC) b)" + 
					"where rum between ? and ?";
			
			
				pstmt=con.prepareStatement(sql);
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rs=pstmt.executeQuery();
			
				if(rs.next()) {
					users=new ArrayList();
					do {
						
						UserlistDataBean user=new UserlistDataBean();
						
						user.setNum(rs.getInt("num"));
						user.setAddr(rs.getString("addr"));
						user.setBdate(rs.getString("bdate"));
						user.setCdate(rs.getDate("cdate"));
						user.setEmail(rs.getString("email"));
						user.setId(rs.getString("id"));
						user.setName(rs.getString("name"));
						user.setPwd(rs.getString("pwd"));
						user.setTel(rs.getString("tel"));
						user.setUlevel(rs.getString("ulevel"));
						
						
						users.add(user);
					
					}while(rs.next());
				}
			}catch(Exception ex) {
					ex.printStackTrace();
			}finally {close(con, rs, pstmt);}
		
		return users;
		
	}

public int getUserCount (String ulevel){
	String sql="select nvl(count(*),0) from userlist where ulevel like ?";
	Connection con=getConnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int x=0;
	
	try{ pstmt=con.prepareStatement(sql);
	pstmt.setString(1, ulevel);
	
	rs=pstmt.executeQuery();
	
	if(rs.next()) {
		x=rs.getInt(1);
	}
	}catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		close(con, rs, pstmt);
	}
	return x;
}
}
			

