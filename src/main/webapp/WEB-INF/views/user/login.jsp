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
      <div class="main-container">
         <div class="login-page-container">
            <h1 class="login-page-header">계정</h1>
            <div class="login-page-content">
               <p class="info">로그인하거나 계정을 생성하려면 이메일 주소를 입력해 주세요.</p>
               <form action="post">
                  <div class="generic-input-box">
                     <input type="text" id="userEmail" name="userEmail" class="generic-input required-input" required>
                     <label class="generic-label" for="userEmail">이메일 <span aria-hidden="true"> *</span></label>
                     <div class="warning-required"><span>필수항목</span></div>
                  </div>
                  
                  <input type="submit" class="button-base button-primary height-normal size-medium" value="계속">

               </form>

            </div>
         </div>
      </div>
   </main>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>