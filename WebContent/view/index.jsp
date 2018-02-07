<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String select=request.getParameter("select");
	if(select==null){
		select="main";
	}
	System.out.println(select);
%>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GLOBAL PLANT</title>
</head>
<body>

<jsp:include page="menu.jsp"/>

<jsp:include page='<%=select+".jsp" %>'/>
</body>
</html>