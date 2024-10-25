<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

   <!-- 로컬 CSS -->
   <link rel='stylesheet' href='/static/css/login.css' />

   <!-- 로컬 js -->
   <script src='/static/js/script.js' defer></script>
   <script src='/static/js/user/login.js' defer></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous" defer></script>
   
	<main id="main" class="margin-bottom-60 mobile-margin-rl-15 contact">
		<div class="main-container">
			<div class="">
				<div class="title">
					<h1 class="boxed-title">계정 만들기</h1>
				</div>
				<!-- title -->
				<div class="body bright-back-color row gap20">
					<div class="col-md-6">
						<h2 class="fs-33 fw-bold margin-bottom-20">로그인 정보</h2>
						<div class="generic-input-box">
							<input type="text" id="userEmail" name="userEmail"
								class="generic-input required-input" required value="">
							<label
								class="generic-label" for="userEmail">이메일 <span
								aria-hidden="true"> *</span></label>
							<div class="warning-required">
								<span>필수항목</span>
							</div>
						</div>
						<div class="row">
							<div class="col generic-input-box width90">
								<input type="text" id="userCountryCodes" name="userCountryCodes" class="generic-input required-input" required value="+82" maxlength="5">
								<label class="generic-label" for="userCountryCodes">국가 코드 <span aria-hidden="true">*</span></label>
								<div class="warning-required"><span>필수항목</span></div>
							</div>
							<div class="col generic-input-box">
								<input type="text" id="userPhone" name="userPhone"
									class="generic-input required-input" required> <label
									class="generic-label" for="userPhone">휴대전화 <span
									aria-hidden="true"> *</span></label>
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
						<h2 class="fs-33 fw-bold  margin-bottom-20">개인 정보</h2>
						<div class="generic-input-box custom-select">
							<select id="gender" name="gender" class="generic-select required-select">
								<option value="0" disabled selected value class="hidden"></option>
								<option value="2">여성</option>
								<option value="1">남성</option>
							</select>
              <label for="gender" class="generic-label" id="genderLable">성별	 *</label>
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

						<div class="row gap20">
							<div class="col-md-5">
								<p>
									메시지를 발송함으로써 <a href="/views/pages/legal_terms" class="text-decoration-underline">이용약관</a>에
									동의하게 되고. 개인정보는 에르메스의 <a href="/views/pages/legal"
										class="text-decoration-underline">개인정보처리방침</a>에 따라 처리됩니다.
								</p>
							</div>
							<div class="col-md-5 text-right">
								<input type="button"
									class="button-base button-primary height-normal size-200"
									value="발송"
									onclick="join()">
							</div>
						</div>
					</div>
				</div>
				<!-- body -->
			</div>
			<!-- .bright-back-color -->
		</div>
		<!-- .main-container -->
	</main>
<script>
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
})

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