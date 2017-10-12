package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class SingUpServlet
 */
@WebServlet("/signup")
public class SingUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SingUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =
				request.getRequestDispatcher("jsp/signup.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");

		System.out.printf("id : %s, pwd : %s", id, pwd);
		
		// id, pwd 값이 맞는지 정합성 체크
		boolean result = false;
		if(result) { // result값이 true일 때
			
			
			// home화면으로 포워딩 하기
			RequestDispatcher rd =
					request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
			
		} else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd =
					request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}

}

//				이건 ajax이야아아아아아아아아아아암
//package org.dimigo.servlet;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.google.gson.Gson;
//
///**
// * Servlet implementation class SignUpServlet
// */
//@WebServlet("/signup")
//public class SignUpServlet extends HttpServlet {
//   private static final long serialVersionUID = 1L;
//
//   /**
//    * @see HttpServlet#HttpServlet()
//    */
//   public SignUpServlet() {
//      super();
//      // TODO Auto-generated constructor stub
//   }
//
//   /**
//    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
//    *      response)
//    */
//   protected void doGet(HttpServletRequest request, HttpServletResponse response)
//         throws ServletException, IOException {
//      RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
//      rd.forward(request, response);
//   }
//
//   /**
//    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
//    *      response)
//    */
//   protected void doPost(HttpServletRequest request, HttpServletResponse response)
//         throws ServletException, IOException {
//
//      request.setCharacterEncoding("utf-8");
//      String email = request.getParameter("email");
//      String pwd = request.getParameter("pwd");
//      String name = request.getParameter("name");
//      String nickName = request.getParameter("nickName");
//      System.out.printf("email : %s, pwd: %s, name : %s, nickName : %s\n", email, pwd, name, nickName);
//
//      Boolean result = true;
//
//      response.setContentType("application/json;charset=utf-8");
//      PrintWriter out = response.getWriter();
//
//      Gson gson = new Gson();
//      Map<String, Object> map = new HashMap<String, Object>();
//      if(result){
//    	  	map.put("msg", "success");
//      }else{
//    	  	map.put("msg", "error");
//      }
//      
//
//      System.out.println(gson.toJson(map));
//      out.write(gson.toJson(map));
//   }
//
//}







//		이건 도은릠의 방식이ㅣ야아아아암
//package org.dimigo.servlet;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.dimigo.vo.UserVO;
//
///**
//* Servlet implementation class SignupServlet
//*/
//@WebServlet("/signup")
//public class SignupServlet extends HttpServlet {
//  private static final long serialVersionUID = 1L;
//      
//   /**
//    * @see HttpServlet#HttpServlet()
//    */
//   public SignupServlet() {
//       super();
//       // TODO Auto-generated constructor stub
//   }
//
//  /**
//   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//   */
//  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//     RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
//     rd.forward(request, response);
//  }
//
//  /**
//   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//   */
//  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//     request.setCharacterEncoding("utf-8");
//     String id = request.getParameter("id");
//     String pwd = request.getParameter("pwd");
//     String name = request.getParameter("name");
//     String nickname = request.getParameter("nickname");
//     System.out.printf("email : %s, name: %s, nickname: %s\n", id, name, nickname);
//     
//     // id, pwd 정합성 체크
//     boolean result = false;
//     
//     if(result) {
//        
//        RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
//        rd.forward(request, response);
//        
//     }
//     else {
//        request.setAttribute("msg", "error");
//        request.setAttribute("tmpID", id);
//        request.setAttribute("tmpPW", pwd);
//        request.setAttribute("tmpNm", name);
//        request.setAttribute("tmpNN", nickname);
//     
//        RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
//        rd.forward(request, response);
//     }
//  }
//
//}