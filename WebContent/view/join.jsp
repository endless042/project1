<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<title>Plant shop</title>
<meta charset="UTF-8">





<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  <!--  -->
   <header class="w3-container w3-xlarge">
    <p class="w3-left">회원가입</p>
  </header>
  
<div class="w3-container" >
  <form class="w3-container"  action="joinPro.jsp">

 
  <p>  <b><font color="red">&nbsp;&nbsp;&nbsp;*</font></b> 표시가 된 항목은 필수 입력입니다.</p>
  <div class="w3-twothird w3-row-padding">
  <div class="w3-third">
 <p> <label ><b>NAME OR NICKNAME<font color="red">*</font></b></label>
  <input class="w3-input w3-border" name="name" type="text" placeholder="이름 또는 별명" required="required"></p>
  </div>
  </div>
 <div class="w3-row-padding">
 <div class="w3-half">
<label ><b>ID <font color="red">*</font></b></label></div></div>
   
   
  <div class="w3-twothird  w3-row-padding"><div class="w3-third w3-row-padding">
  
      <input class="w3-input w3-border" name="id" type="text" placeholder="아이디"  required="required"> </p>
  </div>
  <div class="w3-third w3-row-padding">
    <input class="w3-button w3-black " type="button" value="중복확인">
  </div>
  </div>
  
  
    <div class="w3-twothird w3-row-padding">
  <div class="w3-third w3-row-padding">
 <p> <label ><b>PASSWORD <font color="red">*</font></b></label>
  <input class="w3-input w3-border" name="pwd" type="password" placeholder="비밀번호" required="required"></p>
  </div>
   <div class="w3-third">
 <p> <label ><b>RETYPE  <font color="red">*</font></b></label>
  <input class="w3-input w3-border" name="pwdck" type="password" placeholder="비밀번호 다시 입력" required="required"></p>
  </div>
  </div>
 
    <div class="w3-row-padding">
  <div class="w3-third">
  <p> <label ><b>BIRTHDATE <font color="red">*</font></b></label>
  <input class="w3-input w3-border" name="bdate" type="date"   required="required"></p>
  </div>
  </div>
 
   <div class="w3-row-padding">
  <div class="w3-twothird">
  <div class="w3-threequarter">
   <p> <label ><b>EMAIL <font color="red">*</font></b></label>
  <input class="w3-input w3-border" name="email" type="email" placeholder="이메일 주소" ></p></div>
  </div>
  </div>
  <div class="w3-row-padding">
 <div class="w3-half">

  <label ><b>TEL</b></label></div></div>
  
  <div class="w3-third w3-row-padding">
<div class="w3-third w3-row-padding">  <select style="max-width: 100px;" class="w3-select w3-border" name="tel">
    <option value="미입력" selected>선택</option>
    <option value="010">010</option>
    <option value="011">011</option>
    <option value="070">070</option>
  </select> </div>
<div class="w3-third w3-row-padding"> <input style="max-width: 100px;" class="w3-input w3-border" name="tel" type="text" placeholder="전화번호" > </div>
<div class="w3-third w3-row-padding"> <input style="max-width: 100px;" class="w3-input w3-border" name="tel" type="text" placeholder="전화번호" ></p></div>
  <!-- <input class="w3-input w3-border" name="tel" type="text" placeholder="전화번호" ></p> -->
 
  </div>
    <div class="w3-row-padding">
  <div class="w3-twothird">
   <p> <label ><b>ADDRESS</b></label>
  <input class="w3-input w3-border" name="addr" type="text" placeholder="주소" ></p>
  </div>
  </div>
   
  
  

 <hr>
 
   <div class="w3-row-padding">
  <div class="w3-third">
   <button class="w3-button w3-black w3-margin-right" onclick="history.go(-1)">뒤로</button>
    <input type="reset" class="w3-button w3-black w3-margin-right" value="재작성">
   <input type="submit" class="w3-button w3-black w3-margin-right" value="확인"><br><br></p>
  </div>
  </div>
  
 
</form>
</div>
  
  





 <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">GLOBAL PLANT</a></div>

  <!-- End page content -->
</div>


</body>
</html>
