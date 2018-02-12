<%@page import="db.UserlistDataBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.UserlistDBBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <% int pageSize=10;
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    String pageNum=request.getParameter("pageNum");
    if(pageNum==null||pageNum==""){
    	pageNum="1";}
    
    int currentPage=Integer.parseInt(pageNum);
    int startRow=(currentPage -1 )*pageSize+1;
    int endRow=currentPage*pageSize;
    int count=0;
    int number=0;
    List userList=null;
    UserlistDBBean userPro=UserlistDBBean.getInstance();
   count=userPro.getUserCount("1")+userPro.getUserCount("2");
    if(count>0){
    	userList=userPro.getUsers(startRow,endRow);}
    number=count-(currentPage-1)*pageSize;
    
   
    %>
    
    <p>(전체 회원수:<%=count %>)</p><%
    if(count==0){
    		
    	
    	%>
    	<table class="w3-table w3-bordered w3-hoverable" width="90%">
    	<tr class="w3-grey">
    	<td align="center">회원이 없습니다.</td>
    	
    	</table><% }else{ %>
    	<table class="w3-table w3-bordered w3-hoverable" width="90%">
    	<tr class="w3-light-grey">
    	<td class="w3-center" width="15%"><b>회원번호</b></td>
    	<td class="w3-center" width="15%"><b>레벨</b></td>
    	<td class="w3-center" width="15%"><b>아이디</b></td>
    	<td class="w3-center" width="10%"><b>이름</b></td>
    	<td class="w3-center" width="20%"><b>가입일</b></td>
    	<td class="w3-center" width="25%"><b>관리</b></td>
    
    
    <% for (int i=0;i<userList.size();i++){
    			UserlistDataBean user=(UserlistDataBean)userList.get(i);%>
    			<tr >
    			<td class="w3-center" ><%=user.getNum()%></td>
    			<td class="w3-center" ><%=user.getUlevel() %></td>
    			<td class="w3-center" ><%=user.getId()%></td>
    			<td class="w3-center" ><%=user.getName()%></td>
    			<td class="w3-center" ><%=user.getCdate()%></td>
    			<td class="w3-center" >
    			<button class="w3-button w3-padding-small w3-black w3-hover-green w3-small">수정</button>
    			&nbsp;<button class="w3-padding-small w3-hover-red w3-button w3-small w3-black">탈퇴</button></td>

    		</tr>
    		<%} %>
    </table>
    
    
    <% int bottomLine=5;
    	
    	if(count>0){
    		int pageCount=count/pageSize+(count%pageSize==0?0:1);
    		int startPage=1+(currentPage-1)/bottomLine*bottomLine;
    		int endPage=startPage+bottomLine-1;
    	
    		if(endPage>pageCount)endPage=pageCount;
    	
    		if(startPage>bottomLine){%>
    		<a href="index.jsp?select=admin&pageNum=<%=startPage-bottomLine %>">[이전]</a>
    		<%} %>
    	
    		<%
    		for(int i=startPage;i<=endPage;i++){%>
    		<a href="index.jsp?select=admin&pageNum=<%=i %>">
    		<% 
    		if(i!=currentPage) out.print("["+i+"]");
    		else out.print("<font color='red'>["+i+"]</font>");%></a>
    		<%}
    	
    	
    		if(endPage<pageCount){
    		%>
    		<a href="index.jsp?select=admin&pageNum=<%=startPage+bottomLine %>">[다음]</a>
    			<% }	
    	
    	} %>
    	
    	
     <!-- Pagination -->
  <div class="w3-center w3-section">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>
    
    
    	<%
    	}
    	%>