<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% session.invalidate(); //세션 정보 제거 %>	

<script>
	alert("로그아웃 되었습니다.");
	location.href="start.jsp";	// 처음 페이지로 이동
</script>