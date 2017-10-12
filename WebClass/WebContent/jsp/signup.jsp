<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SignUp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
	<div class="container">

		<form id="signupForm" class="form-signin" action="/WebClass/signup"
			method="post">
			<h2 class="form-signin-heading">Please sign up</h2>

			
			<label for="inputEmail" class="sr-only">Email address</label> 
			<input type="email" name="id" id="inputEmail" class="form-control"
				placeholder="Email address" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" name="pwd" id="inputPassword" class="form-control"
				placeholder="Password" required> <label for="inputName"
				class="sr-only">Name</label> <input type="text" name="name"
				id="inputName" class="form-control" placeholder="Name" required>

			<label for="inputNickName" class="sr-only">Nick Name</label> <input
				type="text" name="nickname" id="inputNickName" class="form-control"
				placeholder="Nickname" required> <br>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				up</button>
		</form>
	</div>

	<%@ include file="modal.jsp"%>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<script>
		
	<%-- 회원 가입이 실패한 경우 처리 추가 --%>
		
	<%if ("error".equals(request.getAttribute("msg"))) {%>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
		$('#inputEmail').val('<%=request.getParameter("id") %>');
		$('#inputPassword').val('<%=request.getParameter("pwd") %>');
		$('#inputName').val('<%=request.getParameter("name") %>');
		$('#inputNickName').val('<%=request.getParameter("nickname")%>');
	<%}%>
		
	</script>

</body>
</html>

<!-- 
					이건 ajax이야아아아아아아아아아아암

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SignUp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<div class="container">

  <form id="signupForm" class="form-signin" action="" method="post">
    <h2 class="form-signin-heading">Please sign up</h2>

    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" name="id" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>

    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" required>

	<label for="inputName" class="sr-only">Name</label>
    <input type="text" name="name" id="inputName" class="form-control" placeholder="Name" required>

	<label for="inputNickName" class="sr-only">Nick Name</label>
    <input type="text" name="nickname" id="inputNickName" class="form-control" placeholder="Nickname" required>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
  </form>
</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>

	<%-- 회원 가입이 실패한 경우 처리 추가 --%>
	<%--
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Sign Up Error');
		myModal.find('.modal-body').text('회원 가입 시 오류가 발생하였습니다.');
		myModal.modal();
	--%>
	 $(document).ready(function () {
		  $('#signupForm').submit(function (event) {
			  event.preventDefault();
			var email = $('#inputEmail').val();
			var pwd= $('#inputPassword').val();
			var name= $('#inputName').val();
			var nickname= $('#inputNickName').val();
			console.log(email,pwd,name,nickname);
			var result;
			$.post("/WebClass/signup",
					{"email" : email, "pwd" : pwd, "name" : name, "nickname" : nickname,"result" : result},
			function(data) {
                console.log(data);


                if(data.msg=="success"){
                   location.href='jsp/login.jsp';
                }
                else{
                   console.log(data.email,data.pwd,data.name,data.nickName,data.result);
                   var myModal = $('#myModal');
                   myModal.find('.modal-title').text('Sign Up Error');
                   myModal.find('.modal-body').text('회원 가입 시 오류가 발생하였습니다.');
                   myModal.modal();
                }
             });
      });
   });


</script>
</body>
</html>

 -->
 
 
 
 
 
 
 
 
 <!-- 			이건 도은릠의 폼서밋 방식이양아아아아아아ㅏㅇㅁ
 
 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SignUp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<div class="container">

  <form id="signupForm" class="form-signin" action="/WebClass/signup" method="post">
    <h2 class="form-signin-heading">Please sign up</h2>
    
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" name="id" id="inputEmail" value="<%
    if(request.getAttribute("tmpID")!=null){
       out.print(request.getAttribute("tmpID"));
    }
       %>" class="form-control" placeholder="Email address" required autofocus>
    
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" name="pwd" id="inputPassword" value="<%
    if(request.getAttribute("tmpPW")!=null){
       out.print(request.getAttribute("tmpPW"));
    }
       %>" class="form-control" placeholder="Password" required>
   
   <label for="inputName" class="sr-only">Name</label>
    <input type="text" name="name" id="inputName" value="<%
    if(request.getAttribute("tmpNm")!=null){
       out.print(request.getAttribute("tmpNm"));
    }
       %>" class="form-control" placeholder="Name" required>
   
   <label for="inputNickName" class="sr-only">Nick Name</label>
    <input type="text" name="nickname" id="inputNickName" value="<%
    if(request.getAttribute("tmpNN")!=null){
       out.print(request.getAttribute("tmpNN"));
    }
       %>" class="form-control" placeholder="Nickname" required>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
  </form>
</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>
   <%-- 회원 가입이 실패한 경우 처리 추가 --%>
   <%
      if("error".equals(request.getAttribute("msg"))){
         %>
         var myModal = $('#myModal');
         myModal.find('.modal-title').text('Sign Up Error');
         myModal.find('.modal-body').text('회원 가입 시 오류가 발생하였습니다.');
         myModal.modal();
      <%}%>
      
   
</script>

</body>
</html>
 
 
  -->