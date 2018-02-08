<%@page import="java.util.Iterator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.UserlistDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <% request.setCharacterEncoding("utf-8"); %>
   
     
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="db.UserlistDataBean">
<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<% 
String[] tmp=request.getParameterValues("tel");
String tel="";

for(int i=0;i<tmp.length;i++){
	tel+=tmp[i];
}



System.out.println(tel);


UserlistDBBean userPro= UserlistDBBean.getInstance(); 

	if(user.getTel()==null){
		 user.setTel("미입력");		
	}

 
	
	if(user.getAddr()==null){
	user.setAddr("미입력");}
	
	
	System.out.println(user); 
	
	userPro.addUser(user);%>
	

<%response.sendRedirect("index.jsp?select=joinComp"); %>
</body>
</html>