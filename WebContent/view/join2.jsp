<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<title>Plant shop</title>
<meta charset="UTF-8">
 
 
  

<div class="w3-container w3-padding-64"  width="100%"  >
  

 <div class="w3-card-4  w3-center w3-padding-24"  style="max-width:900px; padding:20px;" >
      

<form class="w3-container w3-section  action="userModifyPro.jsp" style="padding-left:50px;">
  <h4>회원 가입</h4>
  <!--  <span class="w3-small w3-left"> <b><font color="red">&nbsp;&nbsp;&nbsp;*</font></b> 표시가 된 항목은 필수 입력입니다. </span> -->
   <table class="w3-white w3-small" style="width: 80%;" ><tr><td>
  <label><b>이름</b></label></td><td><input class="w3-input w3-hover-light-grey" type="text" name="name"  ><p/></td></tr>
<tr ><td>  <label><b>아이디</b></label></td><td align="left"><div class="w3-half"><input class="w3-input w3-hover-light-grey " type="text" name="id"  ></div>
<div><button class="w3-button w3-black">중복확인</button></div><p/></td></tr>
<tr ><td>  <label><b>비밀번호</b></label></td><td align="left"><input class="w3-input w3-hover-light-grey" type="text" name="id"  ><p/></td></tr>
<tr ><td>  <label><b>비밀번호확인</b></label></td><td align="left"><input class="w3-input w3-hover-light-grey" type="text" name="id"  ><p/></td></tr>
 <tr ><td><label><b>생일</b> </label></td><td><input type="date"  class="w3-input w3-hover-light-grey" name="bdate" ><p/></td></tr>
 <tr ><td> <label><b>주소</b></label></td><td><input type="text"  class="w3-input w3-hover-light-grey" name="addr"  ><p/></td></tr>
 <tr ><td><label><b>전화번호</b></label></td><td><input type="text"  class="w3-input w3-hover-light-grey" name="tel" ><p/></td></tr>
<tr ><td>  <label><b>이메일</b></label></td><td> <input type="text"  class="w3-input w3-hover-light-grey" name="email"  ><p/></td></tr>
<tr  height="50px"><td><label><b>가입일</b></label>
</td><td align="left">&nbsp;&nbsp;&nbsp; </td></tr>

  </table>

 <hr>
 <%String pageNum=request.getParameter("pageNum"); 
 if(pageNum==null||pageNum.equals("")){
 pageNum="1";}%>
   <div class="w3-row-padding">
  <div class="w3-bar">
   <input class="w3-button w3-black w3-margin-right w3-small" type="button" onclick="window.location='admin_userlist.jsp?pageNum=<%=pageNum %>&select=auserlist'" value="뒤로">
	<input type="hidden" name="id"  >
	<input type="hidden" name="pwd"  >
	<input type="hidden" name="pageNum"  >
   <input type="submit" class="w3-button w3-black w3-margin-right w3-small" value="확인"> <br><br></p>
  </div>
  </div>
  
 
</form>

</div>
</div>





 
  <!-- End page content -->
 
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
 $(function(){
  $('#email_select').change(function(){
   if($('#email_select').val() == "1"){
    $("#last_email").val(""); //값 초기화
    $("#last_email").prop("readonly",false); //활성화
   } else if($('#email_select').val() == ""){
    $("#last_email").val(""); //값 초기화
    $("#last_email").prop("readonly",true); //textBox 비활성화
   } else {
    $("#last_email").val($('#email_select').val()); //선택값 입력
    $("#last_email").prop("readonly",true); //비활성화
   }
  });
 });
 

</script>
 



