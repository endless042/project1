<%@page import="db.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
   
      <%
     String boardid=request.getParameter("boardid");
     if(boardid==null) boardid="1";
     String pageNum=request.getParameter("pageNum");
     if(pageNum==null||pageNum==""){pageNum="1";}
     %>


<jsp:useBean id="article" class="db.BoardDataBean">
<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%System.out.println(request.getParameter("subject")); %>

<% System.out.println(article); %>

<%

BoardDBBean dbPro = BoardDBBean.getInstance(); 

	article.setIp(request.getRemoteAddr());
	
	
	dbPro.insertArticle(article);
	

 	response.sendRedirect("list.jsp?pageNum="+pageNum+"&boardid="+boardid);



%>

