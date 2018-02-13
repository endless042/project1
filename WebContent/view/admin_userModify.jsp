<%@page import="db.UserlistDataBean"%>
<%@page import="db.UserlistDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:include page="adminheader.jsp"></jsp:include>
    <%
  
 
	String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    
	
	try{
		UserlistDBBean userPro=UserlistDBBean.getInstance();
		UserlistDataBean user=userPro.getUser(id,pwd);
		
		%>
    
<div class="w3-container" >


  
		</div>
  <form class="w3-container w3-section" action="userModifyPro.jsp" style="padding-left:50px;">
  <h3>회원 정보 수정</h3>
  
   <table class="w3-white" style="width: 80%;" ><tr v><td>
  <label><b>이름</b></label></td><td><input class="w3-input" type="text" name="name" value="<%=user.getName()%>"><p/></td></tr>
<tr ><td>  <label><b>아이디</b></label></td><td align="left">&nbsp;&nbsp;&nbsp;<%=user.getId()%><p/></td></tr>
 <tr ><td><label><b>생일</b> </label></td><td><input type="date"  class="w3-input" name="name" value="<%=user.getBdate()%>"><p/></td></tr>
 <tr ><td> <label><b>주소</b></label></td><td><input type="text"  class="w3-input" name="name" value="<%=user.getAddr() %>"><p/></td></tr>
 <tr ><td><label><b>전화번호</b></label></td><td><input type="text"  class="w3-input" name="name" value="<%=user.getTel() %>"><p/></td></tr>
<tr ><td>  <label><b>이메일</b></label></td><td><input type="text"  class="w3-input" name="name" value="<%=user.getEmail() %>"><p/></td></tr>
<tr  height="50px"><td>  <label><b>가입일</b></label> </td><td align="left">&nbsp;&nbsp;&nbsp;<%=user.getCdate() %></td></tr>
<tr height="50px"><td>  <label><b>회원레벨</b></label> </td><td align="left">&nbsp;&nbsp;&nbsp;<select style="max-width: 100px;" class="w3-select w3-border" name="ulevel">
    <option value="미입력" selected>선택</option>
    <option value="1">1(기본)</option>
    <option value="2">2(패널티)</option>
    <option value="3">3(열람금지)</option>
  </select> </td></tr>
  </table>

 <hr>
 
   <div class="w3-row-padding">
  <div class="w3-bar">
   <button class="w3-button w3-black w3-margin-right" onclick="history.go(-1)">뒤로</button>

   <input type="submit" class="w3-button w3-black w3-margin-right" value="확인"><br><br></p>
  </div>
  </div>
  
 
</form>
</div>

<%}catch(Exception e){} %>

<script>
function openAdminPage(evt, category) {
  var i, x, tablinks;
  x = document.getElementsByClassName("admin");
  for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" w3-green", "");
  }
  document.getElementById(category).style.display = "block";
  evt.currentTarget.className += " w3-green";
}</script> 

