<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
     <%
     
     int num=0,ref=0,re_step=0, re_level=0;
    String boardid=request.getParameter("boardid");
    
     
     if(request.getParameter("num")!=null){
    	num=Integer.parseInt(request.getParameter("num"));
     	ref=Integer.parseInt(request.getParameter("ref"));
    	re_level=Integer.parseInt(request.getParameter("re_level"));
     	re_step=Integer.parseInt(request.getParameter("re_step"));
     }
    if(boardid==null){
    	boardid="1";
    }
    
    
    %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<html>
<head>
<title>게시판</title>
</head>
<body>
<p class="w3-left"  style="padding-left:30px;"></p>
<center><div class="w3-container">

 <h2 class="w3-wide w3-center">글쓰기</h2>
<br>
<form method="post" name="writeform" action="<%=request.getContextPath() %>/view/writePro.jsp" >
<input type="hidden" name="boardid" value="<%=boardid%>">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_level" value="<%=re_level%>">
<input type="hidden" name="re_step" value="<%=re_step%>">





<table class="w3-table w3-bordered  w3-striped"  style="width:70%;" >
   <tr>
    <td align="right" colspan="2" >
	    <a href="list.jsp"> 글목록</a> 
   </td>
   </tr>
   <tr>
    <td  width="70"   align="center">이 름</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="writer"></td>
  </tr>
  <tr>
    <td  width="70"   align="center" >제 목
    </td>
    <td width="330">
 
 	<%if(request.getParameter("num")==null){%>
 	
       <input type="text" size="40" maxlength="50" name="subject">
       <%}else{ %>
       <input type="text" size="40" maxlength="50" name="subject" value="[답글]">
       <%} %>
	
   
   </td>
  </tr>
  <tr>
    <td  width="70"   align="center">Email</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="email" ></td>
  </tr>
  <tr>
    <td  width="70"   align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
  <tr>
    <td  width="70"   align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2  class="w3-center"> 
  <input type="submit" class="w3-button w3-hover-black" value="글쓰기" >  
  <input type="reset" class="w3-button w3-hover-black" value="다시작성">
  <input type="button" class="w3-button w3-hover-black" value="목록보기" OnClick="window.location='list.jsp'">
</td></tr></table>    
     
</form>   </div> </center>




</body>
</html>      
