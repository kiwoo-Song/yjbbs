<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  <title>영진의숲  for yours</title>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- 부트스트랩 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <!-- 커스텀 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/custom.css">
</head>
<body>

<style>
.go
{
float:left;
}
</style>
<div id="navbar" class="collapse navbar-collapse">
   			<ul class="navbar-nav mr-auto">
   			  			 	<li class="nav item active">
   						<a class="nav-link" href="index.jsp">메인</a>
  			 	</li>
  			 	
   				 <li class="nav-item dropdown">
		           		 <a class="nav-link2 dropdown-toggle" id="dropdown" data-toggle="dropdown">
		              	회원 관리
		            </a>
		            </li>
		            </ul>
		            </div>
		            

  <div class="container mt-3" style="max-width: 560px; ">
	
      <form method="post" action="./userLoginAction.jsp">

        <div class="form-group">

          <label>아이디</label>
          <input type="text" name="userID" class="form-control">

        </div>

        <div class="form-group">

          <label>비밀번호</label>
          <input type="password" name="userPassword" class="form-control">
</div>
</form>



		
		<div class = "go" style=margin-right:20px;>
		<form method="post" action="./userRegisterAction.jsp">
		<ul class ="goes">
		<li class="dona">
		<button type="submit" class="btn btn-primary">로그인</button>
		</li>
		</ul>
		</div>
      </form>

	
		
     
		
	<ul>
	<li><form method="post" action="./userRegister.jsp">
		   <button type="submit" class="btn btn-primary">회원가입</button>
		</form></li>

	</ul>
	
	
 <script src="./js/jquery.min.js"></script>

    <!-- Popper 자바스크립트 추가하기 -->

    <script src="./js/popper.min.js"></script>

    <!-- 부트스트랩 자바스크립트 추가하기 -->

    <script src="./js/bootstrap.min.js"></script>

</body>
</html>