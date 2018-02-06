<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<title>Plant shop</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>


<body class="w3-content" style="max-width:1200px">


<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><b>GLOBAL PLANT</b></h3>
  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
   
   
    <a onclick="myAccFunc('demoAcc')" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      경매 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="#" class="w3-bar-item w3-button">진행 중인 경매</a>
      <a href="#" class="w3-bar-item w3-button w3-light-grey"><i class="fa fa-caret-right w3-margin-right "></i>예정된 경매</a>
      <a href="#" class="w3-bar-item w3-button">지난 경매</a>
   
    </div>
    
    
     <a onclick="myAccFunc('demoAcc1')" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      공동구매 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="#" class="w3-bar-item w3-button">진행 중인 공동구매</a>
      <a href="#" class="w3-bar-item w3-button">예정된 공동구매</a>
      <a href="#" class="w3-bar-item w3-button">지난 공동구매</a>
   
    </div>
       <a onclick="myAccFunc('board')" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      게시판 <i class="fa fa-caret-down"></i>
    </a>
    <div id="board" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="#" class="w3-bar-item w3-button">소식</a>
      <a href="#" class="w3-bar-item w3-button">후기</a>
      <a href="#" class="w3-bar-item w3-button">문의</a>
      <a href="#" class="w3-bar-item w3-button">커뮤니티</a>
   
    </div>
    
    


    <a href="#" class="w3-bar-item w3-button">수입제안</a>
   
  </div>
 
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" onclick="document.getElementById('login').style.display='block'">로그인</a>
   <a href="#footer" class="w3-bar-item w3-button w3-padding">회원가입</a>  
      
  <a href="#footer" class="w3-bar-item w3-button w3-padding">ABOUT US</a> 
 
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide">GLOBAL PLANT</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  

  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">경매 - 예정된 경매</p>
    <p class="w3-right">
      <i class="fa fa-shopping-cart w3-margin-right"></i>
      <i class="fa fa-search"></i>
    </p>
  </header>

  <!-- Image header -->
  <div class="w3-display-container w3-container">
    <img src="<%= request.getContextPath() %>/images/menusample.PNG" alt="menusample" style="width:100%">
    <div class="w3-display-topleft w3-text-white" style="padding:24px 48px">
      <h1 class="w3-jumbo w3-hide-small">새로운 식물 업데이트</h1>
      <h1 class="w3-hide-large w3-hide-medium">새로운 식물<br> 업데이트</h1>
      <h1 class="w3-hide-small">매주 금요일 저녁 6시</h1>
      <p><a href="#jeans" class="w3-button w3-black w3-padding-large w3-large">구경하기</a></p>
    </div>
  </div>

  <div class="w3-container w3-text-grey" id="jeans">
    <p>8 items</p>
  </div>

  <!-- Product grid -->
  <div class="w3-row w3-grayscale">
    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
        <p>Ripped Skinny Jeans<br><b>$24.99</b></p>
      </div>
      <div class="w3-container">
        <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
        <p>Mega Ripped Jeans<br><b>$19.99</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
          <span class="w3-tag w3-display-topleft">New</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Mega Ripped Jeans<br><b>$19.99</b></p>
      </div>
      <div class="w3-container">
        <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
        <p>Washed Skinny Jeans<br><b>$20.50</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
        <p>Washed Skinny Jeans<br><b>$20.50</b></p>
      </div>
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
          <span class="w3-tag w3-display-topleft">마감임박</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Vintage Skinny Jeans<br><b class="w3-text-red">$14.99</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
        <p>Vintage Skinny Jeans<br><b>$14.99</b></p>
      </div>
      <div class="w3-container">
        <img src="<%= request.getContextPath() %>/images/sample.PNG" style="width:100%">
        <p>Ripped Skinny Jeans<br><b>$24.99</b></p>
      </div>
    </div>
  </div>

  
  


  <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">GLOBAL PLANT</a></div>

  <!-- End page content -->
</div>

<!-- Newsletter Modal -->
 <div id="login" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('login').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        
      </div>

      <form class="w3-container" action="/action_page.php">
        <div class="w3-section">
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="아이디를 입력하세요." name="usrname" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="비밀번호를 입력하세요." name="psw" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">로그인</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked">로그인 기억하기
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('login').style.display='none'" type="button" class="w3-button w3-red">취소</button>
        <span class="w3-right w3-padding w3-hide-small"> <a href="#">비밀번호</a>를 잊으셨나요?</span>
      </div>

    </div>
  </div>

<script>
// Accordion 
function myAccFunc(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
//document.getElementById("myBtn").click();


// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>
