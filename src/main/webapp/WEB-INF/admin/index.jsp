<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp" %>
    <!-- [ Main Content ] start -->
    <div class="pc-container">
      <div class="pc-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
          <div class="page-block">
            <div class="row align-items-center">
              <div class="col-md-12">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item" aria-current="page"><a href="/admin">Home</a></li>
                </ul>
              </div>
              <div class="col-md-12">
                <div class="page-header-title">
                  <h2 class="mb-0">Home</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
          <!-- [ sample-page ] start -->
          <div class="col-md-4 col-sm-12">
            <div class="card statistics-card-1 overflow-hidden  bg-brand-color-3">
              <div class="card-body">
                <img src="../assets/images/widget/img-status-6.svg" alt="img" class="img-fluid img-bg" >
                <h5 class="mb-4 text-white">일별 매출 현황</h5>
                <div class="d-flex align-items-center mt-3">
                  <h3 class="text-white f-w-300 d-flex align-items-center m-b-0">&#8361;10,000,000</h3>
                </div>
                <dl class="row">
				  <dt class="col-sm-3">결제된 건</dt>
				  <dd class="col-sm-9">100건</dd>
				  <dt class="col-sm-3">환불 (취소 및 반품) 건</dt>
				  <dd class="col-sm-9">
				    <p>10건</p>
				  </dd>
			  	</dl>
                <p class="text-white mb-2 text-sm mt-3"></p>
                <p class="text-white mb-2 mt-3"></p>
                <p class="text-white mb-2 text-sm mt-3"></p>
                <p class="text-white mb-2 mt-3"></p>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="card statistics-card-1 overflow-hidden">
              <div class="card-body">
                <img src="../assets/images/widget/img-status-4.svg" alt="img" class="img-fluid img-bg" >
                <h5 class="mb-4">월별 매출 현황</h5>
                <div class="d-flex align-items-center mt-3">
                  <h3 class="f-w-300 d-flex align-items-center m-b-0">&#8361;20,000,000</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6">
            <div class="card statistics-card-1 overflow-hidden ">
              <div class="card-body">
                <img src="../assets/images/widget/img-status-5.svg" alt="img" class="img-fluid img-bg" >
                <h5 class="mb-4">연간 매출 현황</h5>
                <div class="d-flex align-items-center mt-3">
                  <h3 class="f-w-300 d-flex align-items-center m-b-0">&#8361;30,000,000</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-12">
            <div class="card">
              <div class="card-header">
                <h5>Hello card</h5>
              </div>
              <div class="card-body">
                <p>
					<b>일별 매출 현황</b><br>
						주문 갯수<br>
						결제된 금액<br>
						환불 (취소 및 반품) 갯수<br><br>
					<b>회원현황</b><br>
						신규 회원수<br>
						총 회원수<br><br>
					<b>게시물 현황</b><br>
						공지사항<br>
						1:1 문의<br>
                </p>
              </div>
            </div>
          </div>
          <!-- [ sample-page ] end -->
        </div>
        <!-- [ Main Content ] end -->
      </div>
    </div>
    <!-- [ Main Content ] end -->
<%@ include file="/WEB-INF/admin/common/footer.jsp" %>