<%@page import="com.shop.hermesplus.user.vo.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- 로컬 CSS -->
<link rel='stylesheet' href='/static/css/terms.css' />
<link rel='stylesheet' href='/static/css/user/user.css' />

<!-- 로컬 js -->
<script src='/static/js/script.js' defer></script>
<script src='/static/js/user/mypage.js' defer></script>
<!-- 헤더 끝 기분좋아서 주석 쿠헤헤 -->

<main id="main" class="margin-top-60 margin-bottom-60 mobile-margin-rl-15 user">
    <div class="main-container">
      <div class="flex flex-center">
        <div class=" w-20p">
          <h2 class="title-xlarge">로그인</h2>
	        <ul class="page-side-list">
	          <li><a href="/views/order">주문내역</a></li>
	          <li><a href="/views/user/mypage">프로필 정보</a></li>
	          <li><a href="/views/user/address">주소록</a></li>
	          <li><a href="/views/user/payment">결제</a></li>
	          <li><a href="/views/user/logout">로그아웃</a></li>
	        </ul>
        </div>
        <div class="bright-back-color   w-80p">
          <div class="title flex space-between">
            <h1 class="boxed-title">프로필 정보</h1>
            <a href="">내 정보 수정</a>
          </div>
          <div class="flex">
	          <div class="m-large w-50p left-border">
	            <dt>이름</dt>
	            <dd class="name"><span><c:out value="${user.uiLastName}"/></span><span><c:out value="${user.uiFirstName}"/></span></dd>
	            <dt>이메일</dt>
	            <dd><c:out value="${user.uiEmail}"/></dd>
	            <dt>전화</dt>
	            <dd><c:out value="${user.uiPhone}"/></dd>
	            <dt>생년월일</dt>
	            <dd><c:out value="${user.uiBirth}"/></dd>
	            <dt>비밀번호</dt>
	            <dd>********</dd>
	          </div>
	          <div class="m-large w-50p">
	            <dt>청구지 주소</dt>
	            <dd>
		            <p class="name"><span><c:out value="${user.uiLastName}"/></span><span><c:out value="${user.uiFirstName}"/></span></p>
		            <p><c:out value="${user.uiAddress}"/></p>
		            <p><c:out value="${user.uiPhone}"/></p>
	            </dd>
	            *고객정보에 등록된 주문자의 주소와 연락처 입니다.
	          </div>
          </div>
        </div>
      </div>
    </div><!-- .main-container -->
</main>
<script>
var user = '<c:out value="${user}"/>'
if(!user){
	//세션에 유저 없으면 로긴 페이지로 던진다.
	location.href='/views/user/login';
}
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>