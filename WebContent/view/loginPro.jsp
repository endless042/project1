<%@page import="db.UserlistDataBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.UserlistDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <% request.setCharacterEncoding("utf-8"); %>
 <% String id=request.getParameter("id");
 	String pwd=request.getParameter("pwd");%>
   
     
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 


UserlistDBBean userPro= UserlistDBBean.getInstance(); 


int ck=userPro.loginCheck(id, pwd);
UserlistDataBean user=null;
	if(ck==-1){
		%><script>
alert("로그인에 실패하였습니다.");
history.go(-1);		//바로 전 화면으로 이동(updateForm.jsp)
</script><%
	}else{
		user=userPro.getUser(id, pwd);
		
				System.out.println("Login : "+user); 
				session.setAttribute("loginId", id);
				session.setAttribute("levelCk", user.getUlevel());
				%><meta http-equiv="Refresh" content="0;url=index.jsp?select=main "> 
				
				<%};
	%>
	


</body>
</html>