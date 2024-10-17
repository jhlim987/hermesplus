<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

   <!-- 로컬 CSS -->
   <link rel='stylesheet' href='/static/css/style.css' />
   <link rel='stylesheet' href='/static/css/login.css' />

   <!-- 로컬 js -->
   <script src='/static/js/script.js' defer></script>
   <script src='/static/js/login.js' defer></script>
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
								class="generic-input required-input" required value="superant621@gmail.com">
							<label
								class="generic-label selected" for="userEmail">이메일 <span
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
									class="generic-label" for="userPhone">전화 <span
									aria-hidden="true"> *</span></label>
								<div class="warning-required">
									<span>필수항목</span>
								</div>
							</div>
						</div>
						<p class="">asdfasdf</p>
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
						<div class="generic-input-box margin-bottom-37">
							<input type="text" id="userPassword" name="userPassword"
								class="generic-input zero-margin required-input" required>
							<label class="generic-label" for="userPassword">비밀번호 <span
								aria-hidden="true"> *</span></label>
							<div class="warning-required">
								<span>필수항목</span>
							</div>
						</div>
						<h2 class="fs-33 fw-bold  margin-bottom-20">개인 정보</h2>
						<div class="generic-input-box custom-select">
							<select id="csSubject" name="csSubject"
								class="generic-select required-select">
								<option value="0" disabled selected value class="hidden"></option>
								<option value="contact-us-subject-option-0">여성</option>
								<option value="contact-us-subject-option-1">남성</option>
							</select> <label for="csSubject" class="generic-label">성별
								*</label>
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
							<input type="date" class="generic-input">
						</div>
					</div>
					<div class="col-md-6">
						<h2 class="fs-33 fw-bold margin-bottom-20">청구 정보</h2>
						<div class="generic-input-box textarea">
							<textarea type="text" id="userMessage" name="userMessage"
								class="required-input generic-textarea" requiredrows="5"
								cols="200"></textarea>
							<label class="generic-label" for="userMessage">주소 <span
								aria-hidden="true"> *</span></label>
							<div class="warning-required">
								<span>필수항목</span>
							</div>
						</div>

						<div class="row gap20">
							<div class="col-md-5">
								<p>
									메시지를 발송함으로써 <a href="#" class="text-decoration-underline">이용약관</a>에
									동의하게 되고. 개인정보는 에르메스의 <a href="#"
										class="text-decoration-underline">개인정보처리방침</a>에 따라 처리됩니다.
								</p>
							</div>
							<div class="col-md-5 text-right">
								<input type="submit"
									class="button-base button-primary height-normal size-200"
									value="발송">
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
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

   <!-- 로컬 CSS -->
   <link rel='stylesheet' href='/static/css/style.css' />
   <link rel='stylesheet' href='/static/css/login.css' />

   <!-- 로컬 js -->
   <script src='/static/js/script.js' defer></script>
   <script src='/static/js/login.js' defer></script>
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
								class="generic-input required-input" required value="superant621@gmail.com">
							<label
								class="generic-label selected" for="userEmail">이메일 <span
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
									class="generic-label" for="userPhone">전화 <span
									aria-hidden="true"> *</span></label>
								<div class="warning-required">
									<span>필수항목</span>
								</div>
							</div>
						</div>
						<p class="">asdfasdf</p>
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
						<div class="generic-input-box margin-bottom-37">
							<input type="text" id="userPassword" name="userPassword"
								class="generic-input zero-margin required-input" required>
							<label class="generic-label" for="userPassword">비밀번호 <span
								aria-hidden="true"> *</span></label>
							<div class="warning-required">
								<span>필수항목</span>
							</div>
						</div>
						<h2 class="fs-33 fw-bold  margin-bottom-20">개인 정보</h2>
						<div class="generic-input-box custom-select">
							<select id="csSubject" name="csSubject"
								class="generic-select required-select">
								<option value="0" disabled selected value class="hidden"></option>
								<option value="contact-us-subject-option-0">여성</option>
								<option value="contact-us-subject-option-1">남성</option>
							</select> <label for="csSubject" class="generic-label">성별
								*</label>
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
							<input type="date" class="generic-input">
						</div>
					</div>
					<div class="col-md-6">
						<h2 class="fs-33 fw-bold margin-bottom-20">청구 정보</h2>
						<div class="generic-input-box textarea">
							<textarea type="text" id="userMessage" name="userMessage"
								class="required-input generic-textarea" requiredrows="5"
								cols="200"></textarea>
							<label class="generic-label" for="userMessage">주소 <span
								aria-hidden="true"> *</span></label>
							<div class="warning-required">
								<span>필수항목</span>
							</div>
						</div>

						<div class="row gap20">
							<div class="col-md-5">
								<p>
									메시지를 발송함으로써 <a href="#" class="text-decoration-underline">이용약관</a>에
									동의하게 되고. 개인정보는 에르메스의 <a href="#"
										class="text-decoration-underline">개인정보처리방침</a>에 따라 처리됩니다.
								</p>
							</div>
							<div class="col-md-5 text-right">
								<input type="submit"
									class="button-base button-primary height-normal size-200"
									value="발송">
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
>>>>>>> branch 'master' of https://github.com/jhlim987/hermesplus
<%@ include file="/WEB-INF/views/common/footer.jsp" %>