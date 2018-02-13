<!DOCTYPE html>
<%@page import="db.UserlistDataBean"%>
<%@page import="db.UserlistDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String mid=request.getParameter("mid");
    String mpwd=request.getParameter("mpwd");
    %>
    
     <jsp:include page="adminheader.jsp"></jsp:include>
  
  <div id="userlist" class="w3-container   admin">
 
    <% if(mid!=null&&mpwd!=null){ %>
    <jsp:include page="admin_userModify.jsp"></jsp:include>
    sdgsdgsgdhedher23525
    <%}else { %>
    
    <jsp:include page="admin_userlist.jsp"></jsp:include>
    <%} %>
  
	
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
  
     <div id="userModify" class="w3-container  admin" style="display:none">
   
  <jsp:include page="admin_userModify.jsp"/>
   
   
    
   
    
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
