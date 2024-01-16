<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../../../header.jsp" %>
<title>Insert title here</title>

</head>
<body>

<c:if test="${result == 0}">

검색결과입니다<br>

<div class="search_landmark"> <!-- 관광지 검색 결과 -->
<!-- 4개만 가져와서 보여주는거로 -->
<c:forEach begin="0" end="3" items="${searchlandmark}" var="vo">
<div>
<a href="">${vo.landmarkinfo_name}</a><br> <!-- 여기에 링크 연결해야함 -->
</div>
</c:forEach>
</div>
<div class="more_landmark">
<a href="morelandmark?searching=${searching}&page=1">랜드마크 검색결과 더보기</a>
</div>
---------------------------------------------------------<br>

<div class="search_trip"> <!-- 여행기 검색 결과 -->
<!-- 4개만 가져와서 보여주는거로 -->
<c:forEach begin="0" end="3" items="${searchtrip}" var="vl">
<div>
<a href="">${vl.trip_title}</a><br> <!-- 여기에 링크 연결해야함 -->
</div>
</c:forEach>
</div>
<div class="more_trip">
<a href="moretrip?searching=${searching}&page=1">여행기 검색결과 더보기</a>
</div>
---------------------------------------------------------<br>
<div class="search_bbs"> <!-- 자유게시판 검색 결과 -->
<c:forEach  begin="0" end="3" items="${searchbbs}" var="vo">
<a href="">${vo.bbs_title}</a><br> <!-- 여기에 링크 연결해야함 -->
</c:forEach>
</div>

<%-- <%
	int pages = (int)request.getAttribute("pages");
	for(int p = 1; p <= pages; p++){
%>
	<!-- 여기 링크수정해야함 -->
	<a href="searchbbs?searching=${searching}?page=<%= p %>">
		<button style="background: pink;"><%= p %></button>
	</a>
<%		
	}
%>  --%>

</c:if>

<c:if test="${result == 1}">
검색 결과가 없습니다
</c:if>
<hr color="yellow">

</body>
</html>