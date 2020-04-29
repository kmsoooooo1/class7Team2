package team2.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	//아래는 싱글톤 클래스를 만들기 위한 코드이다.
	private static MemberDAO obj;
	public MemberDAO(){}
		
	public static MemberDAO getInstance(){
		if(obj == null)
			obj = new MemberDAO();
		return obj;
	}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql="";
	
	// 디비 연결(커넥션 풀 사용)
	private Connection getConnection() throws Exception{
		// Context 객체를 생성
		Context init = new InitialContext();
		
		DataSource ds 
		 = (DataSource) init.lookup("java:comp/env/jdbc/team2");
		
		con = ds.getConnection();
		
		return con;
	}
	// 데이터 베이스에 접속하고 그 결과를 리턴한는 메서드
	// ID중복체크(리턴 메서드)
	public boolean connect(){
		try{
			Context init = new InitialContext();
			DataSource ds = 
					(DataSource)init.lookup("java:comp/env/jdbc/team2");
			con = ds.getConnection();
			return true;
		}catch(Exception e){
			return false;
		}
	}
	
	// 자원 해제 
	
	public void closeDB(){
		try {
			if(rs !=null) rs.close();
			if(pstmt !=null) pstmt.close();
			if(con !=null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	// insertMember(mdto)
	public void insertMember(MemberDTO mdto){
		try {
			con = getConnection();
			sql="insert into team2_member values(?,?,?,?,?,?,?,?,now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mdto.getId());
			pstmt.setString(2, mdto.getPass());
			pstmt.setString(3, mdto.getName());
			pstmt.setString(4, mdto.getPhone());
			pstmt.setString(5, mdto.getZipcode());
			pstmt.setString(6, mdto.getAddr1());
			pstmt.setString(7, mdto.getAddr2());
			pstmt.setString(8, mdto.getEmail());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
	}
	// insertMember(mdto)
	
	// idCheck(id,pass)
	public int idCheck(String id, String pass){
		int check = -1;
		try {
			con = getConnection();
			sql="select pass from team2_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(pass.equals(rs.getString("pass"))){
					check = 1;
				}else{
					check = 0;
				}
			}else{
				check = -1;
			}
			
			System.out.println("아이디 체크 완료 : "+check);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return check;
	}
	// idCheck(id,pass)
	
	// confirmId(id)
	//아이디 중복 체크 해주는 메서드
		//중복되는 ID가 존재하는 경우 true
	public boolean confirmId(String id){
			
		String sql = null;
		boolean result = false;
			
		try{
			if(connect()){
				sql = "select id from team2_member where id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
						
				if(rs.next()){
					result = true;  
				}
			}			
	 }catch(Exception e){
	System.out.println("아이디 가져오기 실패:" + e.getMessage());
	 }finally{
	  closeDB();
	 }
			
	 return result;
	   }
	// confirmId(id)
	
	// getMember(id)
	public MemberDTO getMember(String id){
		MemberDTO mdto = null;
		
		try {
			con = getConnection();
			sql = "select * from team2_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				mdto = new MemberDTO();
				mdto.setId(rs.getString("id"));
				mdto.setPass(rs.getString("pass"));
				mdto.setName(rs.getString("name"));
				mdto.setPhone(rs.getString("phone"));
				mdto.setZipcode(rs.getString("zipcode"));
				mdto.setAddr1(rs.getString("addr1"));
				mdto.setAddr2(rs.getString("addr2"));
				mdto.setEmail(rs.getString("email"));
				mdto.setReg_date(rs.getDate("reg_date"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return mdto;
	}
	// getMember(id)
	
	// updateMember(mdto)
	public int updateMember(MemberDTO mdto){
		int check = -1;
		
		try {
			con = getConnection();
			sql ="select pass from team2_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mdto.getId());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(mdto.getPass().equals(rs.getString("pass"))){
					sql ="update team2_member set name=?,phone=?,zipcode=?,addr1=?,addr2=?,email=? where id=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, mdto.getName());
					pstmt.setString(2, mdto.getPhone());
					pstmt.setString(3, mdto.getZipcode());
					pstmt.setString(4, mdto.getAddr1());
					pstmt.setString(5, mdto.getAddr2());
					pstmt.setString(6, mdto.getEmail());
					pstmt.setString(7, mdto.getId());
					
					pstmt.executeUpdate();
					
					check = 1;
					
					
					
				}else{
					check = 0;
				}
			}else{
				check = -1;
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
		
		return check;
	}
	// updateMember(mdto)
	
	// deleteMember(id,pass)
	public int deleteMember(String id,String pass){
		int check = -1;
		
		try {
			// 1,2
			con = getConnection();
			// 3 sql
			sql = "select pass from team2_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			// 4 실행
			rs = pstmt.executeQuery();
			
			// 5 rs 비교 처리
			if(rs.next()){
				if(pass.equals(rs.getString("pass"))){
					// 3 sql
					sql="delete from team2_member where id=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, id);
					
					// 4 실행
					pstmt.executeUpdate();
					
					check = 1;					
				}else{
				   check = 0;	
				}				
			}else{
				check = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}		
		return check;
	}
	// deleteMember(id,pass)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}