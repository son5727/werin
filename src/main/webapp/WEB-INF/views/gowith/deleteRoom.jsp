<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int result = (int)request.getAttribute("result");
	if(result == 1) {
%>
	<script type="text/javascript">
		history.go(-2);
	</script>
	
<%
	} else {
%>
	<script type="text/javascript">
		alert("오류 발생");
	</script>
<%
	}
%>