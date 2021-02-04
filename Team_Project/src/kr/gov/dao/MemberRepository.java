package kr.gov.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import kr.gov.dto.Member;


public class MemberRepository {
		private ArrayList<Member> listOfMembers = new ArrayList<>();
		
		private static MemberRepository instance = new MemberRepository();
		
	//DB접속에 필요한 멤버
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
		
		//모든 회원정보를 넘겨주는 getter메서드
		public ArrayList<Member> getAllMembers() {
			
			String sql = "select *from members";
			
			try {
				conn = getConnection();           //커넥션 얻기
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();			//DB에 저장되어 있는 상품 모두를 가져와 ResultSet에 담음.
				
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
						System.out.println("DB 연동 해제");
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			
			return listOfMembers;			// 각 객체가 저장되어 ArrayList 리턴함.
		}
		
		
		//db접속(Connection 객체 리턴하는 메서드)
		public Connection getConnection() {
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");						//드라이버명
				conn = DriverManager.getConnection(url, user, password) ;     //Db연결 객체 얻음.
				System.out.println("DB연동 완료");								
				
			} catch (Exception e) {
				System.out.println("DB연동 실패");
				e.printStackTrace();
				
			}
			
					
			return conn;
		}
		
		
		//listOfMembers에 저장된 모든 회원정보를 조회해서 상품아이디와 일치하는 상품을 리턴하는 메서드
		public Member getUser_Byid(String user_id) {
			Member user_Byid = new Member();
			String sql = "select *from members where user_id = ?";
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				
				rs = pstmt.executeQuery();     //인자값으로 넘어온 user_id값에 해당하는 상품을 ResultSet객체에 하나만 저장됨.
				
				if(!rs.next()) {
					return null;       //일치하는 상품없는 상태임.
				}
				
				//인자값으로 넘어온 productId값이 있다면
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
						System.out.println("Db 연동 해제");
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				
			}
			
			return user_Byid;
		}
		
		
		//신규회원정보를 저장 시키는 메서드
		public void AddNewMember(String id, String pw, String name, String birth, String email, String address) {
			
			
			String sql = "insert into members values(?,?,?,?,?,?)";
			
			
		
			try {
				conn = getConnection();           //커넥션 얻기
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
						System.out.println("Db 연동 해제");
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				
			}
			
			return;
			
			
			
			
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
