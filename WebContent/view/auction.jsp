<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<title>Plant shop</title>
<meta charset="UTF-8">



 

<!-- category -->
    <div class="w3-container">
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span> 
      <button class="w3-button w3-black">ALL</button>
      <button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>인기</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i>진행 중</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i>마감임박</button>
       <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i>완료</button>
    </div>
    </div>
 
  <!-- Product grid -->
  <div class="w3-row-padding ">
     
      
        <div class="w3-third w3-container w3-margin-bottom w3-padding">
         <div class="w3-display-container"><img src="<%= request.getContextPath() %>/images/sample.PNG" class="w3-border-top w3-border-left w3-border-right" style="width:100%; ">
       
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-red">입찰하기</button>
          </div>
        </div>
      <div class="w3-container w3-border ">

       <h6>코브라아비스 30cm 중품</h6> 
               <font class="w3-small"><table width="100%" class="w3-light-grey"><tr><td>남은시간  </td><td class="w3-right">3일 15시간 30초</td></tr>  </table></font><p><b>현재가 34,000원 </b></p>
      </div>
    </div>
    
 <div class="w3-third w3-container w3-margin-bottom w3-padding">
        <div class="w3-display-container"><img src="<%= request.getContextPath() %>/images/sample.PNG" class="w3-border-top w3-border-left w3-border-right" style="width:100%; ">
      <span class="w3-tag w3-display-topleft">New</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-red">입찰하기</button>
          </div>
        </div><div class="w3-container w3-border ">

       <h6>코브라아비스 30cm 중품</h6> 
                <font class="w3-small"><table width="100%" class="w3-light-grey"><tr><td>남은시간  </td><td class="w3-right">3일 15시간 30초</td></tr>  </table></font><p><b>현재가 34,000원 </b></p>
      </div>
    </div>
    
   <div class="w3-third w3-container w3-margin-bottom w3-padding">
       <div class="w3-display-container"><img src="<%= request.getContextPath() %>/images/sample.PNG" class="w3-border-top w3-border-left w3-border-right" style="width:100%; ">
       
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-red">입찰하기</button>
          </div>
        </div>
      <div class="w3-container w3-border ">

       <h6>코브라아비스 30cm 중품</h6> 
                <font class="w3-small"><table width="100%" class="w3-light-grey"><tr><td>남은시간  </td><td class="w3-right"><font color="red">0일 5시간 30초</font></td></tr>  </table></font><p><b>현재가 34,000원 </b></p>
      </div>
    </div>
     </div>

  <!-- Product grid -->
  <div class="w3-row-padding ">
     
      
        <div class="w3-third w3-container w3-margin-bottom w3-padding">
         <div class="w3-display-container"><img src="<%= request.getContextPath() %>/images/sample.PNG" class="w3-border-top w3-border-left w3-border-right" style="width:100%; ">
       
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-red">입찰하기</button>
          </div>
        </div>
      <div class="w3-container w3-border ">

       <h6>코브라아비스 30cm 중품</h6> 
               <font class="w3-small"><table width="100%" class="w3-light-grey"><tr><td>남은시간  </td><td class="w3-right">3일 15시간 30초</td></tr>  </table></font><p><b>현재가 34,000원 </b></p>
      </div>
    </div>
    
 <div class="w3-third w3-container w3-margin-bottom w3-padding">
        <div class="w3-display-container"><img src="<%= request.getContextPath() %>/images/sample.PNG" class="w3-border-top w3-border-left w3-border-right" style="width:100%; ">
      <span class="w3-tag w3-display-topleft">New</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-red">입찰하기</button>
          </div>
        </div><div class="w3-container w3-border ">

       <h6>코브라아비스 30cm 중품</h6> 
                <font class="w3-small"><table width="100%" class="w3-light-grey"><tr><td>남은시간  </td><td class="w3-right">3일 15시간 30초</td></tr>  </table></font><p><b>현재가 34,000원 </b></p>
      </div>
    </div>
    
   <div class="w3-third w3-container w3-margin-bottom w3-padding">
       <div class="w3-display-container"><img src="<%= request.getContextPath() %>/images/sample.PNG" class="w3-border-top w3-border-left w3-border-right" style="width:100%; ">
       
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-red" onclick="location.href='aproductview.jsp?select=auction';">입찰하기</button>
          </div>
        </div>
      <div class="w3-container w3-border ">

       <h6>코브라아비스 30cm 중품</h6> 
                <font class="w3-small"><table width="100%" class="w3-light-grey"><tr><td>남은시간  </td><td class="w3-right"><font color="red">0일 5시간 30초</font></td></tr>  </table></font><p><b>현재가 34,000원 </b></p>
      </div>
    </div>
     </div>

  
  
  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
  



  <!-- End page content -->
 