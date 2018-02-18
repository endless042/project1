<%@page import="db.BoardDataBean"%>
<%@page import="db.BoardDBBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    <% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>게시판</title>
<style type="text/css">
a {
text-decoration: none;
}
</style>
</head>
<body>

<%-- <jsp:include page="../menu.jsp"/> --%>
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">
  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">소식</p>
    <p class="w3-right">
      <i class="fa fa-shopping-cart w3-margin-right"></i>
      <i class="fa fa-search"></i>
    </p>
  </header>

 
    <% String boardid=request.getParameter("boardid");
    if(boardid==null) boardid="1";
    
    %>
    <% int pageSize=10;
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    String pageNum=request.getParameter("pageNum");
    if(pageNum==null||pageNum==""){
    	pageNum="1";}
    
    int currentPage=Integer.parseInt(pageNum);
    int startRow=(currentPage -1 )*pageSize+1;
    int endRow=currentPage*pageSize;
    int count=0;
    int number=0;
    List articleList=null;
    BoardDBBean dpPro=BoardDBBean.getInstance();
    count=dpPro.getArticleCount(boardid);
    if(count>0){
    	articleList=dpPro.getArticles(startRow,endRow,boardid);}
    number=count-(currentPage-1)*pageSize;
    
    
    //re_level 들여쓰기 공백
    //re_step 출력 순서
    //ref 원글번호
    %>
    
    <p class="w3-left" style="padding-left:30px;">
    </p>
    
    <div class="w3-container w3-padding-64">
 
    	<p class="w3-right w3-padding-right-large">
    	<a href="writeForm.jsp">글쓰기</a>
    	</p>
    	<%
    	
    	if(count==0){
    		
    	
    	%>
    	<table class="w3-table w3-border w3-hoverable w3-center" width="90%">
    	<tr class="w3-light-grey">
    	<td class="w3-center">저장된 글이 없습니다.</td>
    	
    	</table>
    	
    	<% }else{ %>
    	(전체글:<%=count %>)
    	<table class="w3-table w3-bordered w3-hoverable" width="80%">
    	<tr class="w3-light-grey">
    	<td class="w3-center" width="50"><b>번호</b></td>
    	<td class="w3-center" width="250"><b>제목</b></td>
    	<td class="w3-center" width="100"><b>작성자</b></td>
    	<td class="w3-center" width="150"><b>작성일</b></td>
    	<td class="w3-center" width="50"><b>조회</b></td>
    	
    	
    	<% for (int i=0;i<articleList.size();i++){
    			BoardDataBean article=(BoardDataBean)articleList.get(i);%>
    			<tr height="30">
    			<td class="w3-center" width="50"><%=number-- %></td>
    			<td width="250"><% int wid=0;
    			if(article.getRe_level() >0 ){
    			wid=15*(article.getRe_level());
    			
    			%><img src="../../images/level.gif" width="<%=wid %>" height="16">
    			└
    			<% }else{
    				
    				%> <img src="../../images/level.gif" width="<%=wid %>" height="16">
    				
    				<%} %> <a href="content.jsp?num=<%=article.getNum() %>&pageNum=<%=currentPage %>">
    				<%=article.getSubject() %></a> </td>
    				<td class="w3-center" width="100"><%=article.getWriter() %></td>
    				<td class="w3-center" width="150">
    				<%=sdf.format(article.getReg_date()) %></td>
    				
    				<td class="w3-center" width="50"> <%= article.getReadcount()%></td>
    				
    				
 
    		</tr>
    		<%} %>
    	
    	
    	</table>
    	<%} %>
    	
    	<!-- 하단 페이징  -->
    	<div class="w3-center w3-section">
    	<% int bottomLine=3;
    	
    	if(count>0){
    		int pageCount=count/pageSize+(count%pageSize==0?0:1);
    		int startPage=1+(currentPage-1)/bottomLine*bottomLine;
    		int endPage=startPage+bottomLine-1;
    	
    		if(endPage>pageCount)endPage=pageCount;
    	
    		if(startPage>bottomLine){%>
    		<a href="list.jsp?pageNum=<%=startPage-bottomLine %>">[이전]</a>
    		<%} %>
    	
    		<%
    		for(int i=startPage;i<=endPage;i++){%>
    		<a href="list.jsp?pageNum=<%=i %>">
    		<% 
    		if(i!=currentPage) out.print("["+i+"]");
    		else out.print("<font color='red'>["+i+"]</font>");%></a>
    		<%}
    	
    	
    		if(endPage<pageCount){
    		%>
    		<a href="list.jsp?pageNum=<%=startPage+bottomLine %>">[다음]</a>
    			<% }	
    	
    	} %>
    	
    	</div>
    	</div>
    	 
  <!-- End page content -->
</div>
    	
</body>
</html>