package team2.basket.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import team2.animal.db.AnimalDTO;

public class BasketDAO {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	// 디비 연결(커넥션 풀 사용)
	private Connection getConnection() throws Exception {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/team2");
		con = ds.getConnection();
		return con;
	}

	// 자원 해제
	public void closeDB() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// checkGoods(bkdto)
	public int checkGoods(BasketDTO bkdto){
		int check = 0;
		
		try {
			con = getConnection();
			
			sql = "select * from team2_basket "
					+ "where id=? and b_code=? and b_option=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bkdto.getId());
			pstmt.setString(2, bkdto.getB_code());
			pstmt.setString(3, bkdto.getB_option());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				sql = "update team2_basket set b_amount = b_amount+? "
						+ "where id=? and b_code=? and b_option=?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, bkdto.getB_amount());
				pstmt.setString(2, bkdto.getId());
				pstmt.setString(3, bkdto.getB_code());
				pstmt.setString(4, bkdto.getB_option());
				
				check = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		
		return check;
	}
	// checkGoods(bkdto)
	
	// basketAdd(bkdto)
	public void basketAdd(BasketDTO bkdto){
		int b_num = 0;
		try {
			con = getConnection();
			
			// b_num 계산
			sql ="select max(b_num) from team2_basket";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				b_num = rs.getInt(1)+1;
			}
			
			// 상품을 장바구니에 저장
			// 장바구니에 상품 정보를 저장
			sql="insert into team2_basket values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, b_num);
			pstmt.setString(2, bkdto.getId());
			pstmt.setString(3, bkdto.getB_code());
			pstmt.setInt(4, bkdto.getB_amount());
			pstmt.setString(5, bkdto.getB_option());
			pstmt.setInt(6, bkdto.getB_a_num());
			pstmt.setInt(7, bkdto.getB_g_num());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
	}
	// basketAdd(bkdto)
	
	// getBasketList(id)
	public Vector getBasketList(String id){
		Vector vec = new Vector();
		//동물정보 저장
		ArrayList animalList = new ArrayList();
		//장바구니 정보 저장
		ArrayList basketList = new ArrayList();
		
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		
		try {
			con = getConnection();
			// 장바구니 정보 저장
			sql="select * from team2_basket where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BasketDTO bkdto = new BasketDTO();
				bkdto.setB_num(rs.getInt("b_num"));
				bkdto.setId(rs.getString("id"));
				bkdto.setB_code(rs.getString("b_code"));
				bkdto.setB_amount(rs.getInt("b_amount"));
				bkdto.setB_option(rs.getString("b_option"));
				bkdto.setB_a_num(rs.getInt("b_a_num"));
				bkdto.setB_g_num(rs.getInt("b_g_num"));
				
				// 장바구니 하나의 정보를 리스트 한칸에 저장
				basketList.add(bkdto);
				
				// 각각의 장바구니에 해당하는 상품 정보 저장
				sql ="select * from team2_animal where num=?";
				
				pstmt2 = con.prepareStatement(sql);
				
				pstmt2.setInt(1, bkdto.getB_a_num());
				
				rs2 = pstmt2.executeQuery();
				
				if(rs2.next()){
					
					AnimalDTO adto = new AnimalDTO();
					
					adto.setA_thumbnail(rs2.getString("a_thumbnail"));
					adto.setA_morph(rs.getString("a_morph"));
					adto.setA_price_sale(rs.getInt("a_price_sale"));
					adto.setA_mileage(rs.getInt("a_mileage"));
					
					// 상품정보 하나를 리스트 한칸에 저장
					animalList.add(adto);
				}
			}
			
			vec.add(0,basketList);
			vec.add(1,animalList);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			closeDB();
		}
		
		return vec;
	}
	
	// getBasketList(id)
	
	
	
	
	
	
	
}
