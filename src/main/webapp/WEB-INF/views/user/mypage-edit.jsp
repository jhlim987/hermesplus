<%@page import="com.shop.hermesplus.user.vo.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- 로컬 CSS -->
<link rel='stylesheet' href='/static/css/terms.css' />
<link rel='stylesheet' href='/static/css/user/mypage-edit.css' />

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
                <h2 class="fs-33  margin-bottom-20">로그인 정보</h2>
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
                	<input type='hidden' value='<c:out value="${user.uiPhone}"/>' id='uiPhNo'>
                  <div class="col generic-input-box width90">
                    <input type="text" id="userCountryCodes" name="userCountryCodes" class="generic-input required-input" required value="+82" maxlength="5">
										<label class="generic-label" for="userCountryCodes">국가 코드 <span aria-hidden="true">*</span></label>
                    <div class="warning-required"><span>필수항목</span></div>
                  </div>
                  <div class="col generic-input-box">
                    <input type="text" id="userPhone" name="userPhone" class="generic-input required-input" required>
										<label class="generic-label" for="userPhone">휴대전화 <span aria-hidden="true"> *</span></label>
                    <div class="warning-required"><span>필수항목</span></div>
                  </div>
                </div>
                <div class="generic-input-box">
                  <input type="password" id="userPassword" name="userPassword" class="generic-input zero-margin required-input" required>
                  <label class="generic-label" for="userPassword">비밀번호 <span aria-hidden="true"> *</span></label>
                </div>
                <div class="generic-input-box margin-bottom-37">
                  <input type="password" id="userPassword2" name="userPassword" class="generic-input zero-margin required-input" required>
                  <label class="generic-label" for="userPassword2">비밀번호 재입력<span aria-hidden="true"> *</span></label>
                  <div class="warning-required " id="pwdWarning"><span>두 개의 비밀번호가 서로 다릅니다. 다시 입력해주세요.</span></div>
                </div>
                <h2 class="fs-33   margin-bottom-20">개인 정보</h2>
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
                  <p class="fs-4  margin-bottom-20">생년월일</p>
                  <input type="date" class="generic-input" id="userBirth">
                </div>
              </div>
              <div class="col-md-6">
                <h2 class="fs-33  margin-bottom-20">주소</h2>
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
          <hr class='light-color'/>
          <div class="body">
             <div class="row w-80p m-auto">
               <input type="checkbox" id="newsletter" name="newsletter" checked>
               <label for="newsletter">
                 개인정보처리방침에 따라 에르메스와 에르메스 그룹 산하의 회사에서 제공하는 추천, 서비스, 제품안내 또는 이벤트에 관한 정보를 이메일로 수신하는 것에 동의합니다.<br/>
                 고객님의 온라인 계정 또는 에르메스가 발송하는 각 뉴스레터 하단에 있는 '구독해지' 링크를 통해 언제든 구독을 해지하실 수 있습니다.
               </label>
             </div>
             <div class="margin-top-30 margin-bottom-50">
               <input type="button" class="button-base button-primary height-normal size-200" value="저장" onclick="join()">
               <input type="button" class="button-base button-outline-primary height-normal size-200 margin-top-10" value="취소" onclick="cancel()">
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
const gender = $('#gender');
const userAddress = $('#userAddress');
gender.change(function(){
	$('#genderLable').addClass('selected');
});
userAddress.focus(function(){
  $('#userAddressLabel').addClass('selected');
});
userAddress.blur(function(){
	if(userAddress.val().length > 0){
		$('#userAddressLabel').addClass('selected');
  }else{
    $('#userAddressLabel').removeClass('selected');
  }
});
$('#userPassword2').blur(function(){
	const $this = $(this);
	const $pwd = $('#userPassword');
	if(!($this.val() ===$pwd.val())){
		$('#pwdWarning').toggleClass('show');
	}
});
window.onload = setInputValue;
function setInputValue{
	const phone = $('#uiPhNo').val();
	
}
function join(obj){
  const uiEmail     =   document.getElementById('userEmail').value        ;
  const uiPhone     =   document.getElementById('userCountryCodes').value +  document.getElementById('userPhone').value;
  const uiPwd       =   document.getElementById('userPassword').value     ;
  const uiGender    =   document.getElementById('gender').value     ;
  const uiFirstName =   document.getElementById('userFirstName').value    ;
  const uiLastName  =   document.getElementById('userLastName').value     ;
  const uiBirth     =   document.getElementById('userBirth').value.replaceAll('-','');
  const uiAddress   =   document.getElementById('userAddress').value;
  let   test        =   uiEmail.length>0 && uiPhone.length>0 && uiPwd.length>0 && uiFirstName.length>0 && uiFirstName.length>0 && uiLastName.length>0 && uiBirth.length>0 ;
  console.log(uiEmail);
  console.log(uiPhone);
  console.log(uiPwd);
  console.log(uiFirstName);
  console.log(uiLastName);
  console.log(uiBirth);
  if(test){
    const param = {
      uiEmail     :   uiEmail,
      uiPhone     :   uiPhone,
      uiPwd       :   uiPwd,
      uiGender    :   uiGender,
      uiFirstName :   uiFirstName,
      uiLastName  :   uiLastName,
      uiBirth     :   uiBirth,
      uiAddress   :   uiAddress,
      giNum       :   1
    }
    const cof = {
      method    : 'post',
      url       : '/join',
      json      : true,
      callback  : function(res){
	      if(res==='1'){
	        location.href('/views/user/login');
	      }
	    },
	    param   : JSON.stringify(param)
	  }
  	ajax(cof);
  }else{
    alert('모든 필드를 잘 채워주세요. >.<');
  }
}

</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>