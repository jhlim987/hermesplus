<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
   <title>SKY 에르메스 공식 온라인 매장 | Hermès - 에르메스대한민국</title>

   <link rel="apple-touch-icon" href="assets/images/favicon/apple-touch-icon-iphone-3x.png">
   <link rel="apple-touch-icon" sizes="120x120" href="assets/images/favicon/apple-touch-icon-iphone-2x.png">
   <link rel="apple-touch-icon" sizes="152x152" href="assets/images/favicon/apple-touch-icon-ipad.png">
   <link rel="apple-touch-icon" sizes="167x167" href="assets/images/favicon/apple-touch-icon-ipad-pro.png">

   <link rel="icon" type="image/png" sizes="48x48" href="assets/images/favicon/favicon-48x48.png">
   <link rel="icon" type="image/png" sizes="96x96" href="assets/images/favicon/favicon-96x96.png">
   <link rel="icon" type="image/png" sizes="144x144" href="assets/images/favicon/favicon-144x144.png">

   <meta name="application-name" content="&nbsp;">
   <meta name="msapplication-TileColor" content="#FFFFFF">
   <meta name="msapplication-TileImage" content="assets/images/favicon/mstile-144x144.png">
   <meta name="msapplication-square48x48logo" content="assets/images/favicon/mstile-48x48.png">
   <meta name="msapplication-square96x96logo" content="assets/">

   <meta charset='utf-8'>
   <meta name='viewport' content='width=device-width, initial-scale=1.0'>
   <meta name='Title' content='Hermes paris'>
   <meta name='Subject' content='hermes website'>
   <meta name='Keywords' content='hermes'>
   <meta name='Author' content='sky'>
   <meta name='Publisher' content='hermes'>
   <meta name='Description' content=''>
   <meta name='Author-Date' content=''>
   <meta name='Copyright' content=''>

   <!-- 접근성 텍스트(skip) 숨김 -->
   <style>
      #skip {
         overflow: hidden;
         position: absolute;
         width: 0;
         height: 0;
         line-height: 0;
         text-indent: -9999px;
      }
   </style>

   <!-- 폰트어썸 -->
   <!-- <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css'>
   <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/fontawesome.min.css' rel='stylesheet'> -->
   <script src="https://kit.fontawesome.com/72a43b892a.js" crossorigin="anonymous"></script>

   <!-- 구글폰트 아이콘 -->
   <link rel='stylesheet'
      href='https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0'>

   <!-- 제이쿼리 3.7 CDN -->
   <script src='https://code.jquery.com/jquery-3.7.1.min.js' crossorigin='anonymous'></script>
   <script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script> <!-- 메뉴 스윽 나올때 필요함. -->

   <!-- reset -->
   <link rel='stylesheet' href='./css/reset.css' />

   <!-- bootstrap -->
   <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> -->

   <!-- 로컬 CSS -->
   <link rel='stylesheet' href='./css/style.css' />

   <!-- 로컬 js -->
   <script src='./js/script.js' defer></script>
   <script src='./js/main.js' defer></script>

</head>

<body>
   <!-- 시각장애인 웹 접근성을 위한 skip _ 지우지않아도 됩니다. -->

   <ul id='skip'>
      <li><a href='#header'>헤더 바로가기</a></li>
      <li><a href='#nav'>메뉴 바로가기</a></li>
      <li><a href='#content'>내용 바로가기</a></li>
      <li><a href='#footer'>하단 바로가기</a></li>
   </ul>

   <!-- 공백을 위한 공간입니다. -->
   <header id="header">
      <!-- topnavi -->
      <section id="topnavi">
         <ul>
            <li><a href="#">대한민국</a></li>
            <li><a href="#">매장찾기</a></li>
            <li><a href="contact.html">고객센터</a></li>
         </ul>
      </section>
      <!-- 메뉴, 로고, 오른쪽 메뉴 섹션 -->
      <div id="mainRowNavi">
         <div id="leftMenu">
            <button id="menu" class="menubtns">
               <i class="nav-bars"></i>
               <span>메뉴</span>
            </button>

            <button id="menusearchMobile" class="menubtns show-in-mobile">
               <i class="nav-search"></i>
            </button>

            <div id="menusearchWrap">
               <form action="#" id="menusearch">
                  <input type="text" placeholder="검색" name="search" id="searchTextArea">
                  <button type="submit">Submit</button>
               </form>
            </div>
            <div id="recommendedSearchTerm">
               <div class="padding">
                  <h9>추천 검색</h9>
                  <ul>
                     <li><a href="list.html">스카프, 숄과 스톨 in 여성 (509)</a></li>
                     <li><a href="list.html">여성 (1971)</a></li>
                     <li><a href="list.html">홈, 아웃도어, 승마 용품(1193)</a></li>
                     <li><a href="list.html">Tournis Tresse 브레슬릿</a></li>
                     <li><a href="list.html">로즈 에르메스, 로지 립 매트 인핸서, 로즈 아브리꼬떼</a></li>
                  </ul>
               </div>
            </div>
         </div>

         <a id="logo" class="hide-in-mobile" href="index.html">
            <span class="hiddentext">Hermes paris</span>
         </a>
         <a id="logo2" class="show-in-mobile" href="index.html">
            <span class="hiddentext">Hermes paris</span>
         </a>

         <ul id="rightMenu">
            <li>
               <button class="menubtns">
                  <i class="nav-user"></i>
                  <a href="login.html">로그인</a>
               </button>
            </li>
            <li>
               <button class="menubtns" id="shoppingbag" onclick='location.href="cart.html"'>
                  <i class="nav-shopping"></i>
                  <span>장바구니</span>
               </button>
            </li>
         </ul>
      </div>
      <div id="mainRowNaviBack" class="show-in-mobile"></div>
   </header>
   <%@ include file="/WEB-INF/views/common/nav.jsp" %>
   <!-- 헤더 끝 기분좋아서 주석 쿠헤헤 -->