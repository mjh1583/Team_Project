package kr.gov.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



import kr.gov.dto.Member;


public class MemberRepository {
		private ArrayList<Member> listOfMembers = new ArrayList<>();
		
		private static MemberRepository instance = new MemberRepository();
		
		private Connection conn = null; 
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
		private static String url = "jdbc:mysql://localhost:3306/persondb?serverTimezone=UTC";
		private static String user = "root";
		private static String password = "0217";
		
		
		public static MemberRepository getInstance() {
			return instance;
		}
		
		
		public MemberRepository() {
			// TODO Auto-generated constructor stub
		}
		
		public ArrayList<Member> getAllMembers() {
			
			String sql = "select *from members";
			
			try {
				conn = getConnection();         
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
				
				while(rs.next()) {
					Member member = new Member();			
					member.setUser_id(rs.getString("user_id"));
					member.setUser_pw(rs.getString("user_pw"));
					member.setUser_name(rs.getString("user_name"));
					member.setUser_birth(rs.getInt("user_birth"));
					member.setUser_email(rs.getString("user_email"));
					member.setUser_address(rs.getString("user_address"));
					
					
					listOfMembers.add(member);    
				}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
						if(rs != null) rs.close();
						if(pstmt != null) pstmt.close();
						if(conn != null) conn.close();
						System.out.println("DB");
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			
			return listOfMembers;
		}
		
		public Connection getConnection() {
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");					
				conn = DriverManager.getConnection(url, user, password) ;    
				System.out.println("DB");								
				
			} catch (Exception e) {
				System.out.println("DB");
				e.printStackTrace();
				
			}
			
					
			return conn;
		}
		
		
		public Member getUser_Byid(String user_id) {
			Member user_Byid = new Member();
			String sql = "select *from members where user_id = ?";
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				
				rs = pstmt.executeQuery();  
				
				if(!rs.next()) {
					return null;     
				}
				
				if(rs.next()) {
					user_Byid.setUser_id(rs.getString("user_id"));;
					user_Byid.setUser_pw(rs.getString("user_pw"));;
					user_Byid.setUser_name(rs.getString("user_name"));;
					user_Byid.setUser_birth(rs.getInt("user_birth"));;
					user_Byid.setUser_email(rs.getString("user_email"));;
					user_Byid.setUser_address("user_address");;
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
						if(rs != null) rs.close();
						if(pstmt != null) pstmt.close();
						if(conn != null) conn.close();
						System.out.println("Db");
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				
			}
			
			return user_Byid;
		}
		
		
		public void AddNewMember(String id, String pw, String name, String birth, String email, String address) {
			
			
			String sql = "insert into members values(?,?,?,?,?,?)";
			
			
		
			try {
				conn = getConnection();          
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				pstmt.setString(3, name);
				pstmt.setString(4, birth);
				pstmt.setString(5, email);
				pstmt.setString(6, address);
				
				pstmt.executeUpdate();
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
						if(pstmt != null) pstmt.close();
						if(conn != null) conn.close();
						System.out.println("Db ");
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				
			}
			
			return;
			
			
			
			
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
