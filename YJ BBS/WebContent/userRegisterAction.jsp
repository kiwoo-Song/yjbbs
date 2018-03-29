<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.userDTO"%>
<%@ page import="user.userDAO"%>
<%@ page import="util.SHA256"%>
<%@page import="java.util.Properties"%>
<%@ page import="java.io.PrintWriter"%>


<%

request.setCharacterEncoding("UTF-8");
String userID = null;


if(session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}

if(userID != null) {

	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인이 된 상태입니다.');");
	script.println("location.href = 'index.jsp'");
	script.println("</script>");
	script.close();	

}


%>	

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.jsp">강의평가 웹 사이트</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbar">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">메인</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
          회원 관리
        </a>

        <div class="dropdown-menu" aria-labelledby="dropdown">
<%
if(userID == null) {
%>
          <a class="dropdown-item" href="userLogin.jsp">로그인</a>
          <a class="dropdown-item" href="userRegister.jsp">회원가입</a>
<%

} else {

%>
          <a class="dropdown-item" href="userLogout.jsp">로그아웃</a>
<%
}

%>

        </div>
      </li>
    </ul>

    <form action="./index.jsp" method="get" class="form-inline my-2 my-lg-0">
      <input type="text" name="search" class="form-control mr-sm-2" placeholder="내용을 입력하세요.">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
    </form>
  </div>
</nav>






<%
String userPassword = null;
String userEmail = null;
String userNumber= null;
String userPassword2 = null;
String userName=null;
String userNick=null;
userDAO UserDAO= new userDAO();

	if(request.getParameter("userName") != null) {
	
		userName = (String) request.getParameter("userName");
	
	}
	
	if(request.getParameter("userNick") != null) {
	
		userNick = (String) request.getParameter("userNick");
	
	}


	if(request.getParameter("userPassword2") != null) {

		userPassword2 = (String) request.getParameter("userPassword2");

	}
	
	if(request.getParameter("userID") != null) {

		userID = (String) request.getParameter("userID");

	}

	if(request.getParameter("userPassword") != null) {

		userPassword = (String) request.getParameter("userPassword");

	}

	if(request.getParameter("userEmail") != null) {

		userEmail = (String) request.getParameter("userEmail");

	}
	
	
	if(request.getParameter("userNumber") != null) {userNumber = (String) request.getParameter("userNumber");

	}
	
	
	
	boolean emailChecked = UserDAO.getUserEmailChecked2(userEmail);
	
	if(emailChecked == true) {

		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 인증된 이메일입니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();	
	
		 userPassword = null;
		 userEmail = null;
		 userNumber= null;
		 userPassword = null;
		 userPassword2 = null;
		 UserDAO=null;
		
	}
	
	
	
	
	if (userPassword.equals(userPassword2)==false)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 동일하지않습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
	}

	if (userID == null || userPassword == null || userEmail == null || userNumber == null ) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();

	} else {

		userDAO userDAO = new userDAO();
		int result = userDAO.join(new userDTO(userID, userPassword, userEmail, SHA256.getSHA256(userEmail), false, userNumber,userName,userNick));
		
		


		if (result == -1) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('이미 존재하는 아이디입니다.');");

			script.println("history.back();");

			script.println("</script>");

			script.close();

		} else  {

			session.setAttribute("userID", userID);

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("location.href = 'emailSendAction.jsp';");

			script.println("</script>");

			script.close();

		}

	}


%>



