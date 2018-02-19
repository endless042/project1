<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<title>Plant shop</title>
<meta charset="UTF-8">



 
 <!-- Section -->
  <div class="w3-container w3-content w3-padding" style="max-width:850px" id="contact">

<div class="w3-cell-row w3-margin-bottom " >

<div class="w3-bar w3-white "><span class="w3-tag w3-xlarge w3-black w3-margin-top w3-margin-right">1차</span>
<span class="w3-tag w3-xxlarge w3-white w3-margin-top w3-margin-right">태국 은빛 알로카시아</span><hr></div>
 <!-- 사진쪽 div  -->
  <div class="w3-container w3-half w3-cell w3-padding">
  <div class="w3-display-container w3-text-white">
    <img src="<%=request.getContextPath() %>/images/alocasia.PNG" alt="Lights" style="width:100%">
   <span class="w3-tag w3-display-topleft">예약중</span>

  </div></div>
  
<!-- 상세정보쪽 div-->
  <div class="w3-container w3-half w3-cell w3-cell-bottom" >
    <table><tr><td>
    
    <p><b>품명 : </b>Alocasia lauterbachiana</p>
    
    	<p><b>원산지 : </b>태국</p>
    	<p><b>분류 : </b>관엽류</p>
    <hr>
    <p><b>배송방법 : </b>픽업만 가능</p>
    <hr>
    
    <p><b>공동구매가 : </b>35,000원</p>
    <p><b>진행기간 : </b>2018-02-09 ~ 2018-02-18</p>
   <hr>
    <p><b>진행상황</b> </p>
    
    <div class="w3-light-grey">
  <div class="w3-container w3-red w3-center w3-cell-bottom" style="width:50%">50%</div>
</div><p>목표 수량 50개 중 현재  25개 달성 </p>
</td></tr><tr><td>
<div class="w3-bar w3-white">
	
  <select class="w3-select  w3-margin-right" style="width: 100px;" name="quantity">
	<option  selected="selected" >수량 선택</option>
	<option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
    </select><span class="w3-tag w3-large w3-white w3-margin-top w3-margin-right">총 가격 : 70,000 원</span>
 
  </div>




</td>
</tr>
<tr><td>

<div class="w3-bar w3-white">
<input type="button" class="w3-button  w3-black  w3-right w3-margin-right" value="신청하기">
<input type="button" class="w3-button  w3-green w3-right w3-margin-right"  value="찜하기">
<input type="button" class="w3-button w3-green w3-right w3-margin-right"  value="공유">

 
   
</div>
</td></tr>
</table>

</div>



  
  </div>


<div class="w3-bar w3-border" >
  <a href="#" style="width:25%" class="w3-bar-item w3-button  w3-border-right">정보</a>
  <a href="#" style="width:25%" class="w3-bar-item w3-button w3-hide-small  w3-border-right">문의</a>
  <a href="#" style="width:25%" class="w3-bar-item w3-button w3-hide-small  w3-border-right">후기</a>
  <a href="#" style="width:25%" class="w3-bar-item w3-button w3-hide-small">댓글</a>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="myFunction()">&#9776;</a>
</div>

<div id="demo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium">
  <a href="#" class="w3-bar-item w3-button">문의</a>
  <a href="#" class="w3-bar-item w3-button">후기</a>
  <a href="#" class="w3-bar-item w3-button">댓글</a>
</div>

<div class="w3-container">
  <p>example page</p>
</div>


  

</div>


<hr>


 
  <!-- End page content -->
 

<script>
function myFunction() {
    var x = document.getElementById("demo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

 
