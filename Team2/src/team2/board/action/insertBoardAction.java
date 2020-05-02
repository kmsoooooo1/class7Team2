package team2.board.action;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import team2.board.db.BoardDAO;
import team2.board.db.BoardDTO;

public class insertBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		System.out.println("InsertAction 실행");
		ActionForward forward = new ActionForward();
		
		//	ServletContext context = request.getServletContext();
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("/upload/board"); // '/' 폴더에 대한 정보를 저장
		
		//	DB업로드 할 파일명 변수
		String b_file = "";
		//	받아올 request 변수
		Map<String, String> board = new HashMap<>();

		System.out.println("realPath : "+realPath);
		
		System.out.println("before : " + request.getParameter("b_category"));
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		System.out.println("after : " + request.getParameter("b_category"));
		if(!isMultipart) {
		}else {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			
			List items = null;
			try {
				items = upload.parseRequest(request);
			}catch(Exception e){
				System.err.println("Item get Error : " + e.toString());
				e.printStackTrace();
			}
			
			Iterator itr = items.iterator();
			while(itr.hasNext()) {
				FileItem item = (FileItem)itr.next();
				if(item.isFormField()) {
					System.out.println("fieldName : "+item.getFieldName());
					System.out.println("value : " + item.getString("utf-8"));
					board.put(item.getFieldName(), item.getString("utf-8"));
					
				}else {
					try {
						//	업로드한 파일 및 파일명 확인
						String itemName = item.getName();
						System.out.println("File name = " + itemName);
						
						//	파일명을 현재시간으로 변경 후 저장
						String fileExt = itemName.substring(itemName.lastIndexOf("."));
				        String uploadedFileName = System.currentTimeMillis() + fileExt; 
				        System.out.println(fileExt);
				        System.out.println(uploadedFileName);
						
						//	DB에 저장할 파일명 변수에 파일명 추가
						b_file +="," + uploadedFileName;
						File savedFile = new File(uploadedFileName);
						
						//	파일이름 저장
						System.out.println(savedFile.getName());
						
						//	저장할 경로에 파일 객체 생성
						File upFile = new File(realPath +"/" +savedFile.getName());
						
						//	파일 저장
						item.write(upFile);
						
					}catch(Exception e) {
						System.err.println("Write : " + e.toString());
						e.printStackTrace();
					}
				}
			}
		}
		
		System.out.println(board.toString());
		
		//	dto 생성 및 설정
		BoardDTO dto = new BoardDTO();
		dto.setB_category(board.get("b_category"));
		dto.setB_p_cate(board.get("b_p_cate"));
		dto.setB_title(board.get("b_title"));
		dto.setB_writer(id);
		dto.setB_content(board.get("ir1"));
		dto.setIp_addr(request.getRemoteAddr());
		dto.setB_file(b_file);
		
		BoardDAO dao = new BoardDAO();
		
		//	insert 동작 실행
		int chk = dao.insert(dto);
		
		//	dao 자원 해제
		dao.closeDB();
		if(chk >0){
			//	insert 성공
			System.out.println("글 등록 성공!");
			forward.setPath("./BoardMain.bo");
			forward.setRedirect(true);
		}else{
				//	insert 실패
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('등록 실패..');");
			out.print("history.back();");
			out.print("</script>");
			
			out.close();
		}
		return forward;
	}

}
