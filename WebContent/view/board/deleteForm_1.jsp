<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");
%>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <title>�Խ���</title>
</head>
<body>
<p class="w3-left" style="padding-left: 30px;"></p>
<center>
<div class="w3-container">
<b>�ۻ���</b><br>
<form method="post" name="delForm" action="deletePro.jsp?pageNum=<%=pageNum %>" onsubmit="return deleteSave()">
<table class="table=bordered" width="360">
<tr height="30">
<td align="center"><b>��й�ȣ�� �Է��� �ּ���.</b></td></tr>
   <tr height="30">
   <td align="center">��й�ȣ:
   <input type="password" name="passwd" size="8" maxlength="12">
   <input type="hidden" name="num" value="<%=num %>">
   <!--
      hidden : ����ڿ��� ������ ������, ������ �Ѱ����� �� ������ �ʵ�
      - ���� ��� ȸ������ ������ ����ڰ� �Է����� �ʾƵ� �Ǵ� ������ ������ �ѱ� �� ����ϴ� ��
      - name �Ӽ����� �ʵ� �̸� ����, value �Ӽ����� ������ �ѱ�
      <input type="hidden" name="�̸�" value="������ �ѱ� ��">
     -->
</td></tr> <tr height="30">
<td align="center"><input type="submit" value="�ۻ���">
<input type="button" value="�۸��" onclick="document.location.href='list.jsp?pageNum=<%=pageNum %>'">
</td></tr>
</table>


</form>
</div>

</center>

</body>
</html>