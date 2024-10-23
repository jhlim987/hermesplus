<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


<!-- 로컬 CSS -->
<link rel='stylesheet' href='/static/css/style.css' />
<link rel='stylesheet' href='/static/css/login.css' />

<!-- 로컬 js -->
<script src='/static/js/script.js' defer></script>
<script src='/static/js/login.js' defer></script>

<main id="main">
  <button onclick="toggleEmailPwd()" type="button" class="btn btn-primary">바꿔봐</button>
  <div class="main-container">
    <div class="login-page-container">
      <h1 class="login-page-header">계정</h1>
      <div class="login-page-content">
        <p class="info" id="infoText1">로그인하거나 계정을 생성하려면 이메일 주소를 입력해 주세요.</p>
        <p class="ta-right fs-5 margin-bottom-0 d-none" id="infoRequired1">*필수 항목</p>
        <div class="generic-input-box">
          <input type="text" id="uiEmail" name="userEmail" class="generic-input required-input" required>
          <label class="generic-label" for="userEmail" id="userEmailLabel" >이메일 <span aria-hidden="true"> *</span></label>
          <div class="warning-required"><span>필수항목</span></div>
        </div>
        <input type="button" class="button-base button-primary height-normal size-medium" value="계속" onclick="checkEmail()" id="checkEmail">
        <div class="d-none" id="pwdArea">
          <input type="checkbox" class="hidden" id="showPwdInput" onclick="showPwd()">
           <label for="showPwdInput" class="ta-right fs-5 margin-bottom-0 text-decoration-underline block" id="showPwdLabel">보기</label>
          <div class="generic-input-box">
            <input type="text" id="uiPwd" name="userPassword" class="generic-input zero-margin required-input" required>
            <label class="generic-label" for="userPassword">비밀번호 <span aria-hidden="true"> *</span></label>
            <div class="warning-required"><span>필수항목</span></div>
          </div>
          <a href="/views/user/findPwd.html" class="d-block ta-right fs-5 margin-bottom-0 text-decoration-underline block" id="forgotPassword">비밀번호를 잊으셨나요?</a>
          <input type="button" class="button-base button-primary height-normal size-medium" value="계속" onclick="login()">
          <a onclick="toggleEmailPwd(true)" class="mt-3 d-block text-center fs-5 margin-bottom-0 block text-decoration-underline" id="forgotPassword">다른 이메일 주소를 사용하겠습니다.</a>
        </div>
      </div>
    </div>
  </div>
</main>
<script>
const infoText1   = document.getElementById('infoText1');
const infoRequired1   = document.getElementById('infoRequired1');
const checkEmailBtn   = document.getElementById('checkEmail');
const uiEmail   = document.getElementById('uiEmail');
const pwdArea   = document.getElementById('pwdArea');
const userEmailLabel   = document.getElementById('userEmailLabel');
const uiPwd   = document.getElementById('uiPwd');
let pwdFlag = false;
function showPwd(){
  if(pwdFlag){
	  uiPwd.type = 'password';
    pwdFlag = false;
  }else{
	  uiPwd.type = 'text';
    pwdFlag = true;
  }
}//비밀번호 보기에 관한 

function checkEmail(){
  let param = {
		  uiEmail : uiEmail.value
  }
  param = JSON.stringify(param);
  const xhr = new XMLHttpRequest();
  xhr.open('POST','/user/checkEmail');
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.onreadystatechange = function(){
    if(xhr.readyState === xhr.DONE){
      if(xhr.status === 200){
        if(xhr.responseText>0){
        	toggleEmailPwd();
        }else{
        	//no account then create account
        	//location.href="/views/user/create-account"
        }
      }
    }
  }
  xhr.send(param);
}

function login(){
	let param = {
      uiEmail : uiEmail.value,
      uiPwd : uiPwd.value
  }
  param = JSON.stringify(param);
  const xhr = new XMLHttpRequest();
  xhr.open('POST','/user');
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.onreadystatechange = function(){
    if(xhr.readyState === xhr.DONE){
      if(xhr.status === 200){
        const user = JSON.parse(xhr.responseText);
        if(user!=null){
        	alert('로긴성공');
        }else{
        	alert('로긴실패');
        }
      }
    }
  }
  xhr.send(param);
}
function toggleEmailPwd(flag){
	if(flag!=null){
		uiEmail.value = '';
	}//펑션의 인자값이 있으면 밸류 지워버림. 
	toggleDisabled(uiEmail);
	uiEmail.classList.toggle("shorten-margin");
	uiEmail.classList.toggle("disabled");
	userEmailLabel.classList.toggle("selected");
	infoText1.classList.toggle("d-none");
	checkEmailBtn.classList.toggle("d-none");
	infoRequired1.classList.toggle("d-none");
	pwdArea.classList.toggle("d-none");
}
function toggleDisabled(Obj){
	if(Obj.disabled){
		Obj.disabled = false;
	}else{
		Obj.disabled = true;
	}
}
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>