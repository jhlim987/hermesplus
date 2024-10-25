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
          </div>
          <div class="flex">
            <div class="body bright-back-color row gap20">
              <div class="col-md-6">
                <h2 class="fs-33 fw-bold margin-bottom-20">로그인 정보</h2>
                <div class="generic-input-box">
                  <input type="text" id="userEmail" name="userEmail"
                    class="generic-input required-input" required value='<c:out value="${user.uiEmail}"/>'>
                  <label
                    class="generic-label" for="userEmail">이메일 <span
                    aria-hidden="true"> *</span></label>
                  <div class="warning-required">
                    <span>필수항목</span>
                  </div>
                </div>
                <div class="row">
                  <div class="col generic-input-box width90">
                    <input type="text" id="userCountryCodes" name="userFirstName"
                      class="generic-input required-input" required value="+82"
                      maxlength="5"> <label class="generic-label"
                      for="userFirstName">국가 코드 <span aria-hidden="true">
                        *</span></label>
                    <div class="warning-required">
                      <span>필수항목</span>
                    </div>
                  </div>
                  <div class="col generic-input-box">
                    <input type="text" id="userPhone" name="userPhone"
                      class="generic-input required-input" required> <label
                      class="generic-label" for="userPhone">휴대전화 <span
                      aria-hidden="true"> *</span></label>
                    <div class="warning-required"><span>필수항목</span></div>
                  </div>
                </div>
                <!-- 
                <div class="generic-input-box row gap20 margin-bottom-37">
                  <div class="col-md-10">
                    <input type="text" id="userEmail" name="checkCode"
                      class="generic-input required-input margin-bottom-0" required>
                    <label
                      class="generic-label" for="checkCode">확인 코드 <span
                      aria-hidden="true"> *</span></label>
                    <div class="warning-required">
                      <span>필수항목</span>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <button class="button-base-100 button-primary height-normal btn margin-bottom-0">코드 보내기</button>
                  </div>
                </div>
                -->
                <div class="generic-input-box">
                  <input type="password" id="userPassword" name="userPassword" class="generic-input zero-margin required-input" required>
                  <label class="generic-label" for="userPassword">비밀번호 <span aria-hidden="true"> *</span></label>
                </div>
                <div class="generic-input-box margin-bottom-37">
                  <input type="password" id="userPassword2" name="userPassword" class="generic-input zero-margin required-input" required>
                  <label class="generic-label" for="userPassword2">비밀번호 재입력<span aria-hidden="true"> *</span></label>
                  <div class="warning-required " id="pwdWarning"><span>두 개의 비밀번호가 서로 다릅니다. 다시 입력해주세요.</span></div>
                </div>
                <h2 class="fs-33 fw-bold  margin-bottom-20">개인 정보</h2>
                <div class="generic-input-box custom-select">
                  <select id="gender" name="gender" class="generic-select required-select">
                    <option value="0" disabled selected value class="hidden"></option>
                    <option value="2">여성</option>
                    <option value="1">남성</option>
                  </select>
                  <label for="gender" class="generic-label" id="genderLable">성별  *</label>
                  <div class="warning-required">
                    <span>필수항목</span>
                  </div>
                </div>
                <div class="row gap20">
                  <div class="col-md-5 generic-input-box">
                    <input type="text" id="userFirstName" name="userFirstName"
                      class="generic-input required-input" required> <label
                      class="generic-label" for="userFirstName">이름 <span
                      aria-hidden="true"> *</span></label>
                    <div class="warning-required">
                      <span>필수항목</span>
                    </div>
                  </div>
                  <div class="col-md-5 generic-input-box">
                    <input type="text" id="userLastName" name="userLastName"
                      class="generic-input required-input" required> <label
                      class="generic-label" for="userLastName">성 <span
                      aria-hidden="true"> *</span></label>
                    <div class="warning-required">
                      <span>필수항목</span>
                    </div>
                  </div>
                </div>
    
                <div class="generic-input-box">
                  <p class="fs-4 fw-bold">생년월일</p>
                  <input type="date" class="generic-input" id="userBirth">
                </div>
              </div>
              <div class="col-md-6">
                <h2 class="fs-33 fw-bold margin-bottom-20">주소</h2>
                <div class="generic-input-box textarea">
                  <textarea type="text" id="userAddress" name="userAddress"
                    class="required-input generic-textarea" requiredrows="5"
                    cols="200"></textarea>
                  <label class="generic-label" for="userAddress" id="userAddressLabel">주소 <span
                    aria-hidden="true"> *</span></label>
                  <div class="warning-required">
                    <span>필수항목</span>
                  </div>
                </div>
              </div>
            </div>
            <!-- body -->
          </div>
          <div class="row body">
             <div class="d-block">
               <p>
                 메시지를 발송함으로써 <a href="/views/pages/legal_terms" class="text-decoration-underline">이용약관</a>에
                 동의하게 되고. 개인정보는 에르메스의 <a href="/views/pages/legal"
                   class="text-decoration-underline">개인정보처리방침</a>에 따라 처리됩니다.
               </p>
             </div>
             <div class="text-right">
               <input type="button"
                 class="button-base button-primary height-normal size-200"
                 value="발송"
                 onclick="join()">
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