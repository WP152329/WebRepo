<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<title>D A B I N ; BLOG</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="../css/blog.css">
<!-- J/S -->


</head>

<body>


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="./blog.html">All about Me!</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item" onmouseover="menu_on(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="./who.html">Who? <span class="sr-only">(current)</span></a></li>

				<li class="nav-item" onmouseover="menu_on(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="./like.html">Like?</a></li>

				<li class="nav-item" onmouseover="menu_on(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="./interest.html">Interest?</a></li>

			</ul>
			<!-- Login Form -->
			<%
				UserVO user = (UserVO) session.getAttribute("user");
				if (user == null) {
			%>
				<a class="btn btn-dark" href="/WebClass/bloglogin" role="button">Login</a>
			<%
				} else {
			%>
			<%-- 세션에 사용자 정보가 있는 경우 --%>
			<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				<li class="nav-item dropdown"><a
					class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
					id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <%=user.getName()%>님
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="bd-versions">
						<form action="/WebClass/bloglogout" method="post">
							<button type="submit" class="dropdown-item">Sign out</button>
						</form>
						
					</div></li>
			</ul>
			<%
				}
			%>
			

		</div>
	</nav>

	<!-- Decorate My Home -->
	<div class="container">
		<br> <br> <br> <br>
		<h1 class="firstHello">Hello, Stranger!</h1>
		<br> <br> <br> <br>
		<hr>
		<br>
		<h4 class="beforeJoinMessage">If you want to Join Us,</h4>
		<h4 class="beforeJoinMessage">You Should to Write this Form.</h4>
		<br>
		<hr>
		<br>
	</div>

	<!-- Sign up Form -->
	<form class="form-inline my-2 my-lg-0" id="signup" name="signup">
		<!-- Choice Grade -->
		<div class="container">
			<br>
			<h4>
				<span class="badge badge-dark">Q</span> 몇 학년이세요?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 당신의 학년을 Click 해주세요!
			</h6>
			<br>

			<div class="form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="radio" name="grade" id="grade1"
					value="1" checked required="required">1학년
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="radio" name="grade" id="grade2"
					value="2" required="required">2학년
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="radio" name="grade" id="grade3"
					value="3" required="required">3학년
				</label>
			</div>

		</div>

		<!-- Choice Class -->
		<div class="container">
			<br> <br> <br>
			<h4>
				<span class="badge badge-dark">Q</span> 몇 반이세요?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 당신의 반을 Select 해주세요!
			</h6>
			<br> <select class="custom-select">
				<option value="1" selected>One</option>
				<option value="2">Two</option>
				<option value="3">Three</option>
				<option value="4">Four</option>
				<option value="5">Five</option>
				<option value="6">Six</option>
			</select>
		</div>

		<div class="container">
			<br> <br> <br>
			<h4>
				<span class="badge badge-dark">Q</span> 몇 번이세요?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 당신의 번호를 Write 해주세요!
			</h6>
			<br>
			<div class="input-group input-group-lg">
				<input type="text" id="number" class="form-control"
					placeholder="UserNumber" aria-label="UserNumber"
					aria-describedby="number" required>
			</div>
		</div>
		<div class="container">
			<br> <br> <br>
			<h4>
				<span class="badge badge-dark">Q</span> 이름을 알려주실 수 있나요?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 당신의 이름을 Write 해주세요!
			</h6>
			<br>
			<div class="input-group input-group-lg">
				<input type="text" id="name" class="form-control"
					placeholder="Username" aria-label="Username"
					aria-describedby="name" required>
			</div>
		</div>
		<div class="container">
			<br> <br> <br>
			<h4>
				<span class="badge badge-dark">Q</span> 어떤 ID인가요?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 당신의 ID를 Write 해주세요!
			</h6>
			<br> <input class="form-control mr-sm-2" type="text"
				placeholder="Enter Your ID" aria-label="ID" id="joinId" required>
		</div>
		<div class="container">
			<br> <br> <br>
			<h4>
				<span class="badge badge-dark">Q</span> 어떤 PWD인가요?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 당신의 PWD를 Write 해주세요!
			</h6>
			<br> <input class="form-control mr-sm-2" type="password"
				placeholder="Enter Your PWD" aria-label="PWD" id="joinPwd" required>

		</div>
		<div class="container">
			<br> <br> <br>
			<h4>
				<span class="badge badge-dark">Q</span> 정말로 가입하시겠습니까?
			</h4>

			<h6>
				<span class="badge badge-secondary">+</span> 'Join' 버튼을 눌러주세요!
			</h6>
			<br>
			<button class="btn btn-outline-primary" type="submit">Join
				Us</button>
			<br> <br> <br>
		</div>



	</form>






	<!-- Login Modal -->
	<div class="modal" id="loginModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginModalLabel">Nice, Friend!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Join Modal -->
	<div class="modal" id="joinModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="joinModalLabel">Hello, Friend!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="../js/blog.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>


</body>
</html>