package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		//포워딩하는것
		RequestDispatcher rd =
				request.getRequestDispatcher("jsp/login.jsp");
		// 앞에 이미 WebClass 라는 것을 안다는 가정하에 작성하여야 하기 때문에 따로 /WebClass 라고 작성하지 않고
		// 바로 /jsp 라고 작성한다. 만약 이렇게 안할경우 404에러가 발생함.
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 설정
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		System.out.printf("id : %s, pwd : %s", id, pwd);
		
		// id, pwd 값이 맞는지 정합성 체크
		boolean result = true;
		if(result) { // result값이 true일 때
			// 세션에 사용자 정보를 생성해서 담아줘야 함
			// servlet에서는 jsp처럼 session을 그냥 쓸수 없음(jsp 내장 객체이기 때문)
			// 따라서 session을 따로 가져옴
			HttpSession session = request.getSession();
			
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("MINKI");
			user.setNickname("Manggo");
			
			// setAttribute가 담는 결과값 타입이 오브젝트
			session.setAttribute("user", user);
			
			
			// home화면으로 포워딩 하기
			RequestDispatcher rd =
					request.getRequestDispatcher("jsp/home.jsp");
			rd.forward(request, response);
			
		} else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd =
					request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
		}
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 설정
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		System.out.printf("id : %s, pwd : %s", id, pwd);
		
		// json의 content 타입
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		
		/*
		 * {
		 * 		"id" : testid
		 * }
		 */
		
//		out.println("{");
//		out.println("\"id\":" + "\""+ id + "\"");
//		out.println("}");
		
		
		//JSON Simple Library
//		JSONObject json = new JSONObject();
//		json.put("id", id);
//		System.out.println(json.toJSONString());
//		out.write(json.toJSONString());
//		
		
		// Gson Library (구글꺼얌)
		Gson gson = new Gson();
		JsonObject gsonObject = new JsonObject();
		gsonObject.addProperty("id", id);
		String gsonString = gson.toJson(gsonObject);
		response.getWriter().write(gsonString);
		
		out.close();
	}

}
