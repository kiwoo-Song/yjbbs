<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>

<html>

  <head>

    <title>강의평가 웹 사이트</title>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- 부트스트랩 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <!-- 커스텀 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/custom.css">

  </head>

  <body>
    <style>
	  .nav-link
   {
   margin-left:900px;
 
   }
   
   .nav-link2
   {
   margin-left:30px;
   }
   
   
	ul {
	list-style-type:none;}
	nav li { display:inline; }
	nav li a { float: left;}
	
   
   </style>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

      <a class="navbar-brand" href="index.jsp">영진의숲 웹 사이트</a>

    
      <div class="collapse navbar-collapse" id="navbar">

        <ul class="navbar-nav mr-auto">

          <li class="nav-item active">

            <a class="nav-link" href="index.jsp">메인</a>

          </li>

          <li class="nav-item dropdown">

            <a class="nav-link2 dropdown-toggle" id="dropdown" data-toggle="dropdown">

              회원 관리

            </a>

            <div class="dropdown-menu" aria-labelledby="dropdown">

              <a class="dropdown-item" href="userLogin.jsp">로그인</a>

              <a class="dropdown-item" href="userRegister.jsp">회원가입</a>

              <a class="dropdown-item" href="userLogout.jsp">로그아웃</a>

            </div>

          </li>

        </ul>

        <form action="./index.jsp" method="get" class="form-inline my-2 my-lg-0">

          <input type="text" name="search" class="form-control mr-sm-2" placeholder="내용을 입력하세요.">

          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>

        </form>

      </div>

    </nav>

    <div class="container mt-3" style="max-width: 560px;">

      <form method="post" action="./userRegisterAction.jsp">
      
      
       
      <div class="form-group">

          <label>이름</label>

          <input type="text" name="userName" class="form-control">

        </div>
        
        
      <div class="form-group">

          <label>학번</label>

          <input type="text" name="userNumber" class="form-control">

        </div>
        
        

        <div class="form-group">

          <label>아이디</label>

          <input type="text" name="userID" class="form-control">

        </div>

        <div class="form-group">

          <label>비밀번호</label>

          <input type="password" name="userPassword" class="form-control">

        </div>
        
           <div class="form-group">

          <label>비밀번호 확인</label>

          <input type="password" name="userPassword2" class="form-control">

        </div>

		<div class="form-group">

          <label>닉네임</label>

          <input type="text" name="userNick" class="form-control">

        </div>

        <div class="form-group">

          <label>이메일</label>

          <input type="email" name="userEmail" class="form-control">

        </div>
        
           

        <button type="submit" class="btn btn-primary">회원가입</button>

      </form>

    </div>

    <footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">

      Copyright ⓒ 2018 영진의숲 All Rights Reserved.

    </footer>

    <!-- 제이쿼리 자바스크립트 추가하기 -->

    <script src="./js/jquery.min.js"></script>

    <!-- Popper 자바스크립트 추가하기 -->

    <script src="./js/popper.min.js"></script>

    <!-- 부트스트랩 자바스크립트 추가하기 -->

    <script src="./js/bootstrap.min.js"></script>

  </body>

</html>




