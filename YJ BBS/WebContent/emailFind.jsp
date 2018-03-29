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
   <form method="post" action="./emailFindAction.jsp">
  <label>아이디를 입력해주세요 </label>

  <input type="text" name="userID" class="form-control">
  
  <button type="submit" class="btn btn-primary">비밀번호 찾기</button>
  </form>
  </body>
  </html>
  