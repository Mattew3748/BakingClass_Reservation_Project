<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 완료</title>
<script>
		alert("수정 완료되었습니다. 확인해주세요.");
</script>
<%
	//세션에 들어있는 정보 모두 삭제 !
	session.invalidate();
	response.sendRedirect("review_detail.jsp");
%>	
	
</head>
<body>

</body>
</html>