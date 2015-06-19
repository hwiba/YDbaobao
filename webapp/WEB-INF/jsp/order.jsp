<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/main.css">
<style>
	 #order-section {
		overflow:scroll;
		height: 450px;
	}
	.order-head {
		background-color: lightgray;
	}
	table#order-list {
		width:100%;
		font-size:12px;
		border:1px solid #ccc;
		border-spacing:0;
	}
	table#order-list th{
		padding:5px;
		background-color:#f8f8f8;
	}
	tbody td{
		padding:10px 0;
	}
	.item-name-container {
		text-align:left;
	}
	.item-image {
		width:50px;
		height:50px;
	}
	.item-price {
		font-weight:800;
	}
	tfoot {
		background-color:#f8f8f8;
	}
	tfoot tr{
		padding:10px;
	}
</style>
<title>YDbaobao:: 주문목록</title>
</head>
<body>
	<div id="header" style="width: 100%;">
		<!-- 상단 navigator -->
		<%@ include file="./commons/_topNav.jsp"%>
		<!-- 브랜드/제품 검색바 -->
		<%@ include file="./commons/_search.jsp"%>
	</div>
	<div>
		<!-- 수평 카테고리 메뉴 -->
		<%@ include file="./commons/_horizontalCategory.jsp"%>
	</div>
	<div id="main-container">
		<div id="first-section" class="wrap content" style="height: 500px;">
			<div id="order-section">
				<table id="order-list" >
					<thead>			
						<tr>
							<th></th>
							<th>상품설명</th>
							<th>사이즈</th>
							<th>수량</th>
							<th>판매가</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="order" items="${orders}">
						<tr class="order-head" data-id="${order.orderId}">
							<td colspan="4">${order.orderDate}</td>
							<td colspan="1">${order.realPrice}</td>
						</tr>
						<c:forEach var="item" items="${order.items}">
							<tr data-id="${order.orderId}">
								<td class="item-image-container"><img class="item-image" src="/img/products/${item.product.productImage}"></td>
								<td class="item-name-container"><span class="item-name">${item.product.productName}</span></td>
								<td><span class="item-size">${item.size}</span></td>
								<td><span class="item-quantity">${item.quantity}</span></td>
								<td><span class="item-price">${item.product.productPrice * item.quantity}</span></td>
							</tr>
						</c:forEach>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div id="footer">footer...</div>
	<script src="/js/ydbaobao.js"></script>
</body>
</html>