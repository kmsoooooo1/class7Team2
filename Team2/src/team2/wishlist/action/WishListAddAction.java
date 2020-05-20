package team2.wishlist.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.wishlist.db.WishlistDAO;
import team2.wishlist.db.WishlistDTO;

public class WishListAddAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 로그인 정보 없을 시 로그인페이지로 이동
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		ActionForward forward = new ActionForward();
		
		if(id == null){
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		
		request.setCharacterEncoding("UTF-8");
		
		WishlistDTO wldto = new WishlistDTO();
		WishlistDAO wldao = new WishlistDAO();
		
		// 동물 또는 상품 코드
		String w_code = request.getParameter("product_code");
		
		
		wldao.wishlistAdd(wldto);
		
				
		return null;
	}
	
}
