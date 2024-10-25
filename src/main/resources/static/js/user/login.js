let pcFlag;
let $userEmail=$('#uiEmail');
let regEmail=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
checkDevice();
mobileClass();
$userEmail.on('blur', function(){
  checkEmailValidation();
});

$.fn.popWarning = function(str){
    var $this = $(this);
    $this.addClass('generic-input-error');
    $this.siblings('.warning-required').addClass('show');
    $this.siblings('.warning-required').children('span').html(str);
}

$.fn.warningRequired = function(){
    var $this = $(this);
    value = $this.val();
    if(!value){
        $this.addClass('generic-input-error');
        $this.siblings('.warning-required').addClass('show');
    }else{
        $this.removeClass('generic-input-error');
        $this.siblings('.warning-required').removeClass('show');
    }

}
//.warning-required
$('.required-input').on( "focusout", function(){
    $(this).warningRequired();
});
function checkEmailValidation(){
  if(!regEmail.test($userEmail.val())){
    $userEmail.popWarning("name@domain.com과 같은 형식의 유효한 이메일을 입력해 주세요.");
  }
}


//윈도우 리사이즈시 실행 영역 ---------------------

$( window ).on( "resize", function() {
    checkDevice();
    mobileClass();
});

//-------------------------------------------------
function mobileClass(){
    if(!pcFlag){ //모바일이면
        $('main').addClass('mobile');
    }else{
        $('main').removeClass('mobile');
    }
}
function checkDevice(){
    if($(window).width()>751){
        pcFlag= true;
    }else{
        pcFlag=false;
    }
}
//-----------------------로그인페이지에서 실행영역
const infoText1   		= document.getElementById('infoText1');
const infoRequired1   = document.getElementById('infoRequired1');
const checkEmailBtn   = document.getElementById('checkEmail');
const uiEmail   			= document.getElementById('uiEmail');
const pwdArea   			= document.getElementById('pwdArea');
const userEmailLabel  = document.getElementById('userEmailLabel');
const uiPwd   				= document.getElementById('uiPwd');
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
  console.log('눌렀음');
  let param = {
		  uiEmail : uiEmail.value
  }
  param = JSON.stringify(param);
  const xhr = new XMLHttpRequest();
  xhr.open('POST','/user/checkEmail');
  xhr.setRequestHeader('Content-Type', 'application/json');
  xhr.onreadystatechange = function(){
    if(xhr.readyState === xhr.DONE){
      if(xhr.status === 200){
        if(xhr.responseText>0){
        	toggleEmailPwd();
        }else{
        	//no account then create account
        	location.href='/views/user/create-account'
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
          location.href = '/views/user/mypage';
        }else{
          toggleEmailPwd(true);
        }
      }
    }
  }
  xhr.send(param);
}
function toggleEmailPwd(flag){
  console.log('패스워드 치는데 열자');
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