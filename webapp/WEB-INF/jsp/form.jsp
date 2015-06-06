<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="/css/main.css" />
<title>YDbaobao</title>
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

			<div class="joinForm">
				<c:set var="actionUrl" value="/customer/create" />
				<c:if test="${isUpdate}">
					<c:set var="actionUrl" value="/customer/update" />
				</c:if>

				<form:form modelAttribute="customer" method="post"
					action="${actionUrl}">

					<c:set var="pageName" value="회원가입" />
					<c:if test="${isUpdate}">
						<c:set var="pageName" value="개인정보수정" />
					</c:if>
					<h1>${pageName}</h1>

					<label for="customerId">아이디</label>
					<c:choose>
						<c:when test="${isUpdate}">
							<form:input path="customerId" readonly="true" />
						</c:when>
						<c:otherwise>
							<form:input path="customerId" />
						</c:otherwise>
					</c:choose>
					<br />
					<label for="customerName">이름</label>
					<form:input path="customerName" />
					<br />
					<label for="customerPassword">비밀번호</label>
					<form:password path="customerPassword" />
					<br />
					<label for="customerAgainPassword">비밀번호확인</label>
					<input type="password" name="customerAgainPassword" />
					<br />
					<label for="customerPhone">전화번호</label>
					<form:input path="customerPhone" />
					<br />
					<label for="customerEmail">이메일</label>
					<form:input path="customerEmail" />
					<br />
					<label for="customerAddress">주소</label>
					<form:input path="customerAddress" />
					<br />
					<c:if test="${not empty message}">
						<label class="error">${message}</label>
						<br />
					</c:if>
					<button type="submit">확인</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>