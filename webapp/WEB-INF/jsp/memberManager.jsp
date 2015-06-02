<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>관리자페이지::회원관리</title>
</head>
<style>
html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	background-color: #f8f8f8;
}

#container {
	width: 980px;
	height: 100%;
	background-color: #fff;
	border: 1px solid #ccc;
	margin: 0 auto;
}

#menu {
	position: relative;
	float: left;
	width: 150px;
	height: 100%;
	border-right: 1px solid #ccc;
	z-index: 9;
}

#menu ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

#menu ul li a {
	text-decoration: none;
}

#menu ul li a span:hover {
	position: relative;
	left: 15px;
}

#menu ul li a span {
	position: relative;
	display: block;
	padding: 10px 15px;
	left: 0;
	color: #454545;
	transition-property: left;
	transition-duration: .3s;
}

#content {
	position: relative;
	padding: 20px;
	padding-left: 170px;
	min-height: 200px;
}

h1 {
	margin: 0;
}

table {
	padding-top:25px;
}

table th{
	background-color:#EA6576;
	color:#fff;
	font-weight:200;
	padding:5px 0;
}

table td{
	text-align:center;
	font-size:13px;
}

</style>
<body>
	<div id="container">
		<div id="menu">
			<a href="admin.html" style="text-decoration: none;"> <span
				style="display: block; padding: 15px 15px; color: #fff; background-color: #EA6576">관리자메뉴</span>
			</a>
			<ul>
				<li><a href="memberManager.html"><span>회원관리</span></a></li>
				<li><a href="addProduct.html"><span>상품등록</span></a></li>
				<li><a href="productManager.html"><span>상품관리</span></a></li>
				<li><a href="brandManager.html"><span>브랜드관리</span></a></li>
				<li><a href="categoryManager.html"><span>카테고리관리</span></a></li>
				<li><a href="adminConfig.html"><span>관리자설정</span></a></li>
			</ul>
		</div>
		<div id="content">
			<h1>회원관리</h1>
			<table style="width: 800px;">
				<tr>
					<th>회원아이디</th>
					<th>회원이름</th>
					<th>연락처</th>
					<th>등급</th>
					<th>승인</th>
					<th>가입일</th>
					<th>  </th>
				</tr>
				<tr>
					<td>id1@email.com</td>
					<td>John</td>
					<td>000-1231-1231</td>
					<td>준비</td>
					<td>불가</td>
					<td>2015.05.12</td>
					<td>
						<button>상세정보</button>
						<button>삭제</button>
					</td>
				</tr>
				<tr>
					<td>id1@email.com</td>
					<td>John</td>
					<td>000-1231-1231</td>
					<td>준비</td>
					<td>불가</td>
					<td>2015.05.12</td>
					<td>
						<button>상세정보</button>
						<button>삭제</button>
					</td>
				</tr>
				<tr>
					<td>id1@email.com</td>
					<td>John</td>
					<td>000-1231-1231</td>
					<td>준비</td>
					<td>불가</td>
					<td>2015.05.12</td>
					<td>
						<button>상세정보</button>
						<button>삭제</button>
					</td>
				</tr>
				<tr>
					<td>id1@email.com</td>
					<td>John</td>
					<td>000-1231-1231</td>
					<td>준비</td>
					<td>불가</td>
					<td>2015.05.12</td>
					<td>
						<button>상세정보</button>
						<button>삭제</button>
					</td>
				</tr>
				<tr>
					<td>id1@email.com</td>
					<td>John</td>
					<td>000-1231-1231</td>
					<td>준비</td>
					<td>불가</td>
					<td>2015.05.12</td>
					<td>
						<button>상세정보</button>
						<button>삭제</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>