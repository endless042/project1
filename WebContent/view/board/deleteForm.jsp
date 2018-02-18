<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int num=Integer.parseInt(request.getParameter("num"));
    String pageNum=request.getParameter("pageNum");
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

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
<p class="w3-left" style="padding-left:30px;"></p>

<center>

<div class="w3-container" style="padding-bottom: 64px;">
	<h2 class="w3-wide w3-center">글 삭제</h2><br>
	
	<form method="post" name="delForm"  action="deletePro.jsp?pageNum=<%=pageNum %>" onsubmit="return deleteSave()">
	<table class="table-bordered" width="360">
	
	<tr height="30"><td align="center"><b>비밀번호를 입력해주세요.</b></td></tr>
	<tr height="30"></tr>
	<tr height="30">	
	<td align="center">비밀번호:
	<input type="password" name="passwd" size="8" maxlength="12">
	<input type="hidden" name="num" value="<%=num%>">	 
	</td></tr><tr height="30">
	<td align="center"><input type="submit" class="w3-button w3-hover-black" value="삭제">
	<input type="button" class="w3-button w3-hover-black" value="목록" onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
	</td></tr>
	</table>
	
	
	</form>

</div>

</center>

 
</div>

</body>
</html>