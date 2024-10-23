<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <!-- [Head] start -->

  <head>
    <title>Layout 3 | Light Able Admin & Dashboard Template</title>
    <!-- [Meta] -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="description"
      content="Light Able admin and dashboard template offer a variety of UI elements and pages, ensuring your admin panel is both fast and effective."
    />
    <meta name="author" content="phoenixcoded" />

    <!-- [Favicon] icon -->
    <link rel="icon" href="/static/assets/images/favicon.svg" type="image/x-icon" />
	<!-- [Google Font : Public Sans] icon -->
	<link href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
	<!-- map-vector css -->
    <link rel="stylesheet" href="/static/assets/css/plugins/jsvectormap.min.css">	
	<!-- [Tabler Icons] https://tablericons.com -->
	<link rel="stylesheet" href="/static/assets/fonts/tabler-icons.min.css" >
	<!-- [Feather Icons] https://feathericons.com -->
	<link rel="stylesheet" href="/static/assets/fonts/feather.css" >
	<!-- [Font Awesome Icons] https://fontawesome.com/icons -->
	<link rel="stylesheet" href="/static/assets/fonts/fontawesome.css" >
	<!-- [Material Icons] https://fonts.google.com/icons -->
	<link rel="stylesheet" href="/static/assets/fonts/material.css" >
	<!-- [Template CSS Files] -->
	<link rel="stylesheet" href="/static/assets/css/style.css" id="main-style-link" >
	<link rel="stylesheet" href="/static/assets/css/style-preset.css" >
	<link rel="stylesheet" href="/static/assets/css/style-custom.css" >
  </head>
  <!-- [Head] end -->
  <!-- [Body] Start -->
  <body class="layout-3" data-pc-preset="preset-1" data-pc-sidebar-theme="light" data-pc-sidebar-caption="true" data-pc-direction="ltr" data-pc-theme="light">
<!-- [ Pre-loader ] start -->
<div class="loader-bg">
  <div class="loader-track">
    <div class="loader-fill"></div>
  </div>
</div>
<!-- [ Pre-loader ] End -->
<!-- [ Sidebar Menu ] start -->
<nav class="pc-sidebar">
  <div class="navbar-wrapper">
    <div class="m-header">
      <a href="/dashboard/index.html" class="b-brand text-primary">
        <!-- ========   Change your logo from here   ============ -->
        <img src="/static/assets/images/logo-white.svg" alt="logo image" class="logo-lg">
        <span class="badge bg-brand-color-2 rounded-pill ms-2 theme-version">v1.0</span>
      </a>
    </div>
    <div class="navbar-content">
      <ul class="pc-navbar">
        <li class="pc-item pc-hasmenu">
          <a href="/admin" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-gauge"></i>
            </span>
            홈
          </a>
        </li>
        <li class="pc-item pc-hasmenu">
          <a href="#!" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-shopping-cart"></i>
            </span>
            주문
            <span class="pc-arrow"><i data-feather="chevron-right"></i></span>
          </a>
          <ul class="pc-submenu">
            <li class="pc-item"><a class="pc-link" href="/admin/order/order-dashboard">주문 대시보드</a></li>
            <li class="pc-item"><a class="pc-link" href="/admin/order/order-inquiry">전체 주문 조회</a></li>
            <li class="pc-item"><a class="pc-link" href="/admin/order/order-unpaid">입금전 관리</a></li>
            <li class="pc-item"><a class="pc-link" href="/admin/order/order-delivery">배송 관리</a></li>
            <li class="pc-item pc-hasmenu">
              <a class="pc-link" href="#!">CS 관리<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
              <ul class="pc-submenu">
                <li class="pc-item"><a class="pc-link" href="/admin/order/order-cancle">취소 관리</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/order/order-exchange" >교환 관리</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/order/order-return"  >반품 관리</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/order/order-refund"  >환불 관리</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="pc-item pc-hasmenu">
          <a href="#!" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-gift"></i>
            </span>
            상품
            <span class="pc-arrow"><i data-feather="chevron-right"></i></span>
          </a>
          <ul class="pc-submenu">
            <li class="pc-item"><a class="pc-link" href="/admin/product/product-dashboard1">상품 대시보드</a></li>
            <li class="pc-item"><a class="pc-link" href="">상품 목록</a></li>
            <li class="pc-item"><a class="pc-link" href="/admin/product/product-insert">상품 등록</a></li>
            <li class="pc-item"><a class="pc-link" href="">상품 관리</a></li>
            <li class="pc-item"><a class="pc-link" href="">분류 관리</a></li>
            <li class="pc-item"><a class="pc-link" href="">상품 진열</a></li>
            <li class="pc-item"><a class="pc-link" href="">재고 관리</a></li>
            <li class="pc-item"><a class="pc-link" href="">상품 옵션 관리</a></li>
          </ul>
        </li>
        <li class="pc-item pc-hasmenu">
          <a href="#!" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-user"></i>
            </span>
            고객
            <span class="pc-arrow"><i data-feather="chevron-right"></i></span>
          </a>
          <ul class="pc-submenu">
            <li class="pc-item"><a class="pc-link" href="/admin/user/member-dashboard">고객 대시보드</a></li>
            <li class="pc-item pc-hasmenu">
              <a class="pc-link" href="#!">회원 조회<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
              <ul class="pc-submenu">
                <li class="pc-item"><a class="pc-link" href="/admin/user/search">회원 정보 조회</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/user/order" >주문 회원 조회</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/user/best"  >구매액 상위회원 조회</a></li>
              </ul>
            </li>
            <li class="pc-item pc-hasmenu">
              <a class="pc-link" href="#!">회원 관리<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
              <ul class="pc-submenu">
                <li class="pc-item"><a class="pc-link" href="/admin/user/grade"  >회원 등급별 관리</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/user/out"    >회원 탈퇴 관리</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/user/dormant">휴면 회원 관리</a></li>
                <li class="pc-item"><a class="pc-link" href="/admin/user/news"   >뉴스레터 구독자 관리</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="pc-item pc-hasmenu">
          <a href="#!" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-note-pencil"></i>
            </span>
            게시판
            <span class="pc-arrow"><i data-feather="chevron-right"></i></span>
          </a>
          <ul class="pc-submenu">
            <li class="pc-item"><a class="pc-link" href="">게시판 대시보드</a></li>
            <li class="pc-item"><a class="pc-link" href="">게시물 관리</a></li>
          </ul>
        </li>
        <li class="pc-item">
          <a href="#!" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-file"></i>
            </span>
            페이지
          </a>
        </li>
        <li class="pc-item pc-hasmenu">
          <a href="#!" class="pc-link">
            <span class="pc-micon">
              <i class="ph-duotone ph-house"></i>
            </span>
            상점
            <span class="pc-arrow"><i data-feather="chevron-right"></i></span>
          </a>
          <ul class="pc-submenu">
            <li class="pc-item"><a class="pc-link" href="/admin/category/category-dashboard">카테고리 만들기</a></li>
            <li class="pc-item"><a class="pc-link" href="">메인 카테고리 설정</a></li>
            <li class="pc-item"><a class="pc-link" href="">푸터 카테고리 설정</a></li>
            <li class="pc-item"><a class="pc-link" href="">상점 관리</a></li>
            <li class="pc-item"><a class="pc-link" href="">인덱스 메뉴 관리</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="card pc-user-card">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="flex-shrink-0">
            <img src="/static/assets/images/user/avatar-1.jpg" alt="user-image" class="user-avtar wid-45 rounded-circle" />
          </div>
          <div class="flex-grow-1 ms-3">
            <div class="dropdown">
              <a href="#" class="arrow-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" data-bs-offset="0,20">
                <div class="d-flex align-items-center">
                  <div class="flex-grow-1 me-2">
                    <h6 class="mb-0">홍길동</h6>
                    <small>관리자</small>
                  </div>
                  <div class="flex-shrink-0">
                    <div class="btn btn-icon btn-link-secondary avtar">
                      <i class="ph-duotone ph-windows-logo"></i>    
                    </div>
                  </div>
                </div>
              </a>
              <div class="dropdown-menu">
                <ul>
                  <li>
                    <a class="pc-user-links">
                      <i class="ph-duotone ph-user"></i>
                      <span>My Account</span>
                    </a>
                  </li>
                  <li>
                    <a class="pc-user-links">
                      <i class="ph-duotone ph-power"></i>
                      <span>Logout</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>
<!-- [ Sidebar Menu ] end -->
 <!-- [ Header Topbar ] start -->
<header class="pc-header">
  <div class="header-wrapper"> <!-- [Mobile Media Block] start -->
<div class="me-auto pc-mob-drp">
  <ul class="list-unstyled">
    <!-- ======= Menu collapse Icon ===== -->
    <li class="pc-h-item pc-sidebar-collapse">
      <a href="#" class="pc-head-link ms-0" id="sidebar-hide">
        <i class="ti ti-menu-2"></i>
      </a>
    </li>
    <li class="pc-h-item pc-sidebar-popup">
      <a href="#" class="pc-head-link ms-0" id="mobile-collapse">
        <i class="ti ti-menu-2"></i>
      </a>
    </li>
    <li class="dropdown pc-h-item d-inline-flex d-md-none">
      <a class="pc-head-link dropdown-toggle arrow-none m-0" data-bs-toggle="dropdown" href="#" role="button"
        aria-haspopup="false" aria-expanded="false">
        <i class="ph-duotone ph-magnifying-glass"></i>
      </a>
      <div class="dropdown-menu pc-h-dropdown drp-search">
        <form class="px-3">
          <div class="mb-0 d-flex align-items-center">
            <input type="search" class="form-control border-0 shadow-none" placeholder="Search..." />
            <button class="btn btn-light-secondary btn-search">Search</button>
          </div>
        </form>
      </div>
    </li>
    <li class="pc-h-item d-none d-md-inline-flex">
      <form class="form-search">
        <i class="ph-duotone ph-magnifying-glass icon-search"></i>
        <input type="search" class="form-control" placeholder="Search..." />

        <button class="btn btn-search" style="padding: 0"><kbd>ctrl+k</kbd></button>
      </form>
    </li>
  </ul>
</div>
<!-- [Mobile Media Block end] -->
</header>
<!-- [ Header ] end -->