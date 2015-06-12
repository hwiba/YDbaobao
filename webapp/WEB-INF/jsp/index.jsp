<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome YDbaobao!</title>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="/css/main.css" />
<link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css" />
</head>
<body>
	<div id="header" style="width: 100%;">
		<!-- 상단 navigator -->
		<%@ include file="./commons/_topNav.jsp"%>
		<!-- 브랜드/제품 검색바 -->
		<%@ include file="./commons/_search.jsp"%>
	</div>
	<div id="main-container">
		<div id="first-section" class="wrap content" style="height: 500px;">
			<!-- 카테고리 메뉴 -->
			<%@ include file="./commons/_category.jsp"%>

			<div
				style="width: 80%; height: 100%; outline: 1px solid #ccc; display: table; float: left;">
				아마도 신상품 페이지</div>
		</div>
		<div id="second-section" style="padding-top: 25px;">
			<!-- 브랜드 탭(A~Z) 메뉴 -->
			<%@ include file="./commons/_brand.jsp" %>

			<div id="item-container" class="wrap content">
				<%@ include file="./commons/_productsBox.jsp" %>
				<%@ include file="./commons/_productsListBar.jsp" %>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="content wrap">Footer...</div>
	</div>
	<script src="/js/ydbaobao.js"></script>
</body>
</html>
