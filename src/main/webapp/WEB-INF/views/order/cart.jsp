<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/min-header.jsp" %>
   <!-- 로컬 CSS -->
   <link rel='stylesheet' href='/static/css/style.css' />
   <link rel='stylesheet' href='/static/css/cart.css' />

   <!-- 로컬 js -->
   <script src='/static/js/script.js' defer></script>
   
		<!-- 헤더 끝 기분좋아서 주석 쿠헤헤 -->
		<main id="main" class="margin-bottom-60 order-main">
			<div class="progress margin-top-35 row">
				<div class="col-sm-4">
					<p class="progress-header ta-center selected">장바구니</p>
				</div>
				<div class="col-sm-4">
					<p class="progress-header ta-center">결제하기</p>
				</div>
				<div class="col-sm-4">
					<p class="progress-header ta-center">확인</p>
				</div>
			</div>
			<div class="row progress-ing">
				<div class="col-sm-2"></div>
			</div>
			<div class="row progress-ing hidden">
				<div class="col-sm-6"></div>
			</div>
			<div class="row progress-ing hidden">
				<div class="col-sm-10"></div>
			</div>
			<div class="row gap20 row-sm-col">
				<div class="col-md-8 row-col gap20">
					<div class="bright-back-color cart-section">
						<div class="info fw-bold">
							<p>1개의 상품이 장바구니에 담겨 있습니다.</p>
						</div>
						<div class="row cart-prd-list gap15">
							<div class="">
								<a href="/views/product/detail" target="_blank"><img src="/static/product/thumb/1-1.png"></a>
							</div>
							<div class="">
								<p class="prd-name">Hanrais de Coeur 스카프 45</p>
								<dl class="options">
									<dt>컬러:</dt>
									<dd>베흐미뇽/나뛰렐/블루</dd>
									<br>
									<dt>크기:</dt>
									<dd>사이즈 없음</dd>
									<br>
									<dt>제품 번호:</dt>
									<dd>H744173S 07</dd>
								</dl>
							</div>
							<div class="">-1+</div>
							<div class="ta-right">500000</div>
						</div>
						<dl class="row-spbt">
							<dt>소계</dt>
							<dd>500000</dd>
						</dl>
						<dl class="row-spbt">
							<dt>배송</dt>
							<dd>0</dd>
						</dl>
						<dl class="row-spbt">
							<dt>총액</dt>
							<dd>500000</dd>
						</dl>
					</div>
					<div class="bright-back-color"></div>
				</div>
				<div class="col-md-4 row-col gap20">
					<div class="bright-back-color">asdf</div>
					<div class="bright-back-color">asdf</div>
				</div>
			</div>
		</main>
<%@ include file="/WEB-INF/views/common/min-footer.jsp" %>