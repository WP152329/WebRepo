package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/session")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션에서 사용자 정보가 들어있지 않으면(null이면) login.jsp로 포워딩시켜야함
		// 만약 사용자 정보가 들어있다면 sessionInfo.jsp로 포워딩
		// sessionInfo.jsp에서는 id, name, nickname을 출력함
		
		// 쌤이 하신 콬드
		if(request.getSession().getAttribute("user") == null ){
			// requestDispatcher 방식과는 다른방식임 (다시 보내게 하는 방식)
			// 우리가 직접 url에 "" 주소를 타이핑해 이동하는 방식이라고 생각하면 됨
			// 이 방식은 공유되는 객체가 없고 화면만 보여주고 끝나는 방식임
			response.sendRedirect("jsp/login.jsp");
		} else {
			// 세션에 있는 값을 그대로 유지한채로 이동하고 싶다면 requestDispatcher를 이용해서
			// 값을 계속해서 전달하면 됨. (똑같은 request 객체가 전달되기 때문)
			RequestDispatcher rd =
				request.getRequestDispatcher("jsp/sessionInfo.jsp");
			rd.forward(request, response);
		}
		
		
		//내가 한 코드
//		HttpSession session = request.getSession();
//		if(session.getAttribute("user") == null){
//			RequestDispatcher rd =
//					request.getRequestDispatcher("jsp/login.jsp");
//			rd.forward(request, response);
//		} else {
//			RequestDispatcher rd =
//					request.getRequestDispatcher("jsp/sessionInfo.jsp");
//			rd.forward(request, response);
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
