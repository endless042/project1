<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String pageNum=request.getParameter("pageNum");
     if(pageNum==null||pageNum==""){
    	pageNum="1";}%>
<html>
<title>Plant shop</title>
<meta charset="UTF-8">
<% 
String id=(String)session.getAttribute("loginId");
String levelCk=(String)session.getAttribute("levelCk");
if(!levelCk.equals("0")){%>
<script>
alert("접근 권한이 없습니다.");
history.go(-1);		//바로 전 화면으로 이동(updateForm.jsp)
</script>

<%} %>
<jsp:include page="menu.jsp"/>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  <!--  -->
   <header class="w3-container w3-xlarge">
    <p class="w3-left">관리자 페이지</p>
  </header>
 

<div class="w3-container w3-padding-64" width="100%"  >
  

 <div class="w3-card-4 w3-center w3-padding-24"  style="max-width:900px" >
      
 
  
  
    <div class="w3-bar w3-border" style="max-width:900px; width:90%;">
    <button style="width:25%" class="w3-bar-item w3-button tablink w3-green " onclick="openAdminPage(event,'userlist')">회원목록</button>
    <button style="width:25%" class="w3-bar-item w3-button tablink w3-hide-small" onclick="openAdminPage(event,'auction')">경매</button>
    <button style="width:25%" class="w3-bar-item w3-button tablink w3-hide-small" onclick="openAdminPage(event,'gpurchase')">공동구매</button>
         <button style="width:25%" class="w3-bar-item w3-button tablink w3-hide-small" onclick="openAdminPage(event,'board1')">게시판</button>
        <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="myFunction()">&#9776;</a>
  </div>
  <div id="demo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium">
  <a href="#"  onclick="openAdminPage(event,'auction')" class="w3-bar-item w3-button">경매</a>
  <a href="#" onclick="openAdminPage(event,'gpurchase')" class="w3-bar-item w3-button">공동구매</a>
  <a href="#" onclick="openAdminPage(event,'board1')" class="w3-bar-item w3-button">게시판</a>
</div>
  
  <div id="userlist" class="w3-container   admin">
    <jsp:include page="admin_userlist.jsp"></jsp:include>
    
  </div>

  <div id="auction" class="w3-container  admin" style="display:none">
    <h2>경매</h2>
    <p>경매 관리자 페이지</p> 
  </div>

  <div id="gpurchase" class="w3-container   admin" style="display:none">
    <h2>공동구매</h2>
    <p>공동구매  관리자 페이지</p>
  </div>
  
   <div id="board1" class="w3-container  admin" style="display:none">
    <h2>게시판</h2>
    <p>게시판  관리자 페이지</p>
  </div>
  
   
  </div>

</div>



 <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">GLOBAL PLANT</a></div>

  <!-- End page content -->
</div>


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
}

function myFunction() {
    var x = document.getElementById("demo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>
