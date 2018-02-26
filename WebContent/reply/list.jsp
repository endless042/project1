<%@page import="guestbook.service.GetMessageListService"%>
<%@page import="guestbook.service.MessageListView"%>
<%@page import="guestbook.model.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <% String pageNumberStr=request.getParameter("page");
    
    int pageNumber=1;
    if(pageNumberStr!=null){
    	pageNumber=Integer.parseInt(pageNumberStr);}
    GetMessageListService messageListService=GetMessageListService.getInstance();
    MessageListView viewData=messageListService.getMessageList(pageNumber);
    %>
    
    <c:set var="viewData" value="<%=viewData %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 메시지 목록</title>
</head>
<body>
<div class="w3-container w3-small"   >

 <table class="  w3-table" >
<c:if test="${!viewData.isEmpty() }">
<div>


<c:forEach var="message" items="${viewData.messageList }">
<tr>
<td   style="width: 10%;">
${message.id }<br/></td><td   style="width: 20%;">
<span class="w3-tag">${message.guestName }</span><br/></td><td   style="width: 55%;">
${message.message }<br/></td><td style="width: 15%;">
 <a href="confirmDeletion.jsp?messageId=${message.id }">[삭제]</a> 
</td>
</tr>
</c:forEach>


</div>
<tr><td colspan="4" >
<center>
<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount }">
<a href="list.jsp?page=${pageNum }">[${pageNum}]</a>
</c:forEach></center></td></tr>

</c:if>
</table>
 <div class="w3-container w3-padding w3-light-grey">
        <form action="writeMessage.jsp" method="post">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input " type="text" placeholder="이름" required name="guestName">
            </div>
            <div class="w3-half">
              <input class="w3-input " type="password" placeholder="비밀번호" required name="password">
            </div>
          </div>
           <input class="w3-input  " type="text" placeholder="내용" required name="message">
          <button class="w3-button w3-black w3-section w3-right" type="submit">전송</button>
        </form>
      </div>

</div>
</body>
</html>