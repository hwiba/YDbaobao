<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome YDbaobao!</title>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="/css/main.css" />
</head>
<body>
	<div id='header' style='width: 100%;'>
		<!-- 상단 navigator -->
		<%@ include file="./commons/_topNav.jsp"%>
		<!-- 브랜드/제품 검색바 -->
		<%@ include file="./commons/_search.jsp"%>
	</div>
	<div id='main-container'>
		<div id='first-section' class='wrap content' style='height: 500px;'>
			<!-- 카테고리 메뉴 -->
			<%@ include file="./commons/_category.jsp"%>

			<div id=''
				style='width: 80%; height: 100%; outline: 1px solid #ccc; display: table; float: left;'>
				아마도 신상품 페이지</div>
		</div>
		<div id='second-section' style="padding-top: 25px;">
			<%@ include file="./commons/_brand.jsp" %>
			<div id='item-container' class='wrap content'>
				<ul>
					<li class='item'>
						<a href="/product?productId=111">
							<img src="http://img33.makeshop.co.kr/shopimages/iloveje/0160020001013.jpg" />
							<div class='item-info'>
								<div class='item-desc'>여기에는 상품설명이..</div>
								<div class='item-name'>퓨어레스</div>
								<div class='item-price'>19,800</div>
							</div>
						</a>
					</li>
					<li class='item'>
						<a href="/product?productId=111">
							<img src="http://1.226.84.96/img_item/2015/05/29/PTDP50529023.jpg" />
							<div class='item-info'>
								<div class='item-desc'>여기에는 상품설명이..</div>
								<div class='item-name'>퓨어레스</div>
								<div class='item-price'>19,800</div>
							</div>
						</a>
					</li>
					<li class='item'>
						<a href="/product?productId=111">
							<img src="http://www.stylenoriter.co.kr/web/product/tiny/201504/4002_shop1_903103.jpg" />
							<div class='item-info'>
								<div class='item-desc'>여기에는 상품설명이..</div>
								<div class='item-name'>퓨어레스</div>
								<div class='item-price'>19,800</div>
							</div>
						</a>
					</li>
					<li class='item'>
						<a href="/product?productId=111">
							<img src="http://www.stylenoriter.co.kr/web/product/tiny/201505/4137_shop1_857453.jpg" />
							<div class='item-info'>
								<div class='item-desc'>여기에는 상품설명이..</div>
								<div class='item-name'>퓨어레스</div>
								<div class='item-price'>19,800</div>
							</div>
						</a>
					</li>
					<li class='item'>
						<a href="/product?productId=111">
							<img src="http://www.stylenoriter.co.kr/web/product/tiny/201505/4102_shop1_319639.jpg" />
							<div class='item-info'>
								<div class='item-desc'>여기에는 상품설명이..</div>
								<div class='item-name'>퓨어레스</div>
								<div class='item-price'>19,800</div>
							</div>
						</a>
					</li>
					<li class='item'>
						<a href="/product?productId=111">
							<img src="http://1.226.84.96/img_item/2015/05/29/PTDP50529023.jpg" />
							<div class='item-info'>
								<div class='item-desc'>여기에는 상품설명이..</div>
								<div class='item-name'>퓨어레스</div>
								<div class='item-price'>19,800</div>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="content wrap">Footer...</div>
	</div>
</body>
</html>
