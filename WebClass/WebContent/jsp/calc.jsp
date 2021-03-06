<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숫자 합 계산</title>
</head>
<body>
<form>
<input type="number" name="num" min=1 required>
<button type="submit">계산</button>
</form>
<%! public int sum = 0; %>
<%-- 스크립틀릿 tag로 1~입력받은 숫자까지의 합 구하기 --%>
<%
	String number = request.getParameter("num");
	if(number!=null){
		int num = Integer.parseInt(number);
		for(int i=0; i<=num; i++){
			sum += i;
		}
%>
<%-- 결과 출력 시 변수 값은 표현식 tag로 작성하기 (jsp 파일 로딩시에는 보이지 않음) --%>
<h1>1 ~ <%=num%>까지의 합은 <%=sum%>입니다. </h1>
<% 
	} sum =0;
%>


<%-- 현재 일시 구하기 --%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
%>
<%-- 표현식에서는 ;을 찍지 않는다! --%>
현재 일시는 <%= sdf.format(new Date()) %>
</body>
</html>
</body>
</html>