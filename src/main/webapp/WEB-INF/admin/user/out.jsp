<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp" %>
  <!-- [Page specific CSS] start -->
  <!-- Bootstrap DatePicker -->
  <link rel="stylesheet" href="/static/assets/css/plugins/datepicker-bs5.min.css">
  <!-- [Page specific CSS] end -->
  
  <!-- [ Main Content ] start -->
  <div class="pc-container">
    
    <div class="pc-content">
      <!-- [ page title ] start -->
      <div class="page-header">
        <div class="page-block">
          <div class="row align-items-center">
            <div class="col-md-12">
              <div class="page-header-title">
                <h2 class="mb-0">회원 탈퇴 관리<button type="button" class="btn btn-icon btn-link-primary avtar-xs" data-bs-toggle="popover" 
                data-bs-title="회원 탈퇴 관리"  data-bs-placement="bottom" data-bs-html="true"
                data-bs-content="
                <ul>
                  <li>직접 탈퇴하거나 또는 운영 방침에 따라 강제 탈퇴된 회원을 확인할 수 있습니다.</li>
                  <li>회원 탈퇴 처리 시 개인 정보가 삭제되며 복구할 수 없습니다.</li>
                  <li>탈퇴 처리는 일반탈퇴, 강제탈퇴, 탈퇴신청, 인증삭제로 구분됩니다.</li>
                </ul>">
                <i class="ti ti-info-circle"></i></button></h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        
        <!-- [ block1 : 회원 검색 ] start -->
        <div class="col-lg-3">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <div class="mb-4">
              	<label class="form-label">회원등급:</label>
                <select class="form-select form-select-sm mb-2 ">
                  <option>블랙</option>
                  <option>실버</option>
                  <option>골드</option>
                  <option>다이아</option>
                </select>
              </div>
              <div class="mb-4">
                <label class="form-label">아이디:</label>
								<input type="text" class="form-control form-control-sm" >                
              </div>
              <div class="mb-4">
                <label class="form-label">탈퇴유형:</label>
                <select class="form-select form-select-sm mb-2 ">
                  <option>전체</option>
                  <option>일반탈퇴</option>
                  <option>강제탈퇴</option>
                  <option>탈퇴신청</option>
                  <option>인증삭제</option>
                </select>          
              </div>
              <div class="mb-4">
                <label class="form-label">기간:</label><br/>
                <div class="btn-group mb-3" role="group">
									<input type="radio" class="btn-check" id="today" name="period" checked>
									<label class="btn btn-outline-info" for="today">오늘</label>
									<input type="radio" class="btn-check" id="three" name="period">
									<label class="btn btn-outline-info" for="three">3일</label>
									<input type="radio" class="btn-check" id="seven" name="period">
									<label class="btn btn-outline-info" for="seven">7일</label>
									<input type="radio" class="btn-check" id="month" name="period">
									<label class="btn btn-outline-info" for="month">1개월</label>
									<input type="radio" class="btn-check" id="year" name="period">
									<label class="btn btn-outline-info" for="year">1년</label>
								</div>
								<div class="input-daterange input-group " id="datepicker_range">
                  <input type="text" class="form-control text-left" placeholder="시작 날짜" name="range-start" >
                  <input type="text" class="form-control text-end" placeholder="종료 날짜" name="range-end" >
                </div>
              </div>
              <div class="mb-4">
                <label class="form-label">탈퇴사유:</label>
                <select class="form-select form-select-sm mb-2 ">
                  <option>전체</option>
                  <option>상품종류가 부족하다.</option>
                  <option>상품가격이 비싸다.</option>
                  <option>상품가격에 비해 품질이 떨어진다.</option>
                  <option>배송이 느리다.</option>
                  <option>반품/교환이 불만이다.</option>
                  <option>상담원 고객응대 서비스가 불만이다.</option>
                  <option>쇼핑몰 혜택이 부족하다. (쿠폰, 적립금, 할인 등)</option>
                  <option>이용빈도가 낮다.</option>
                  <option>개인정보 유출이 염려된다.</option>
                  <option>기타</option>
                </select>          
              </div>
            </div>
          </div>
        </div>
        <!-- [ block1 : 회원 검색 ] end -->
        
        <!-- [ block2 : 회원 목록 ] start -->
        <div class="col-lg-9">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-2 pt-2 ">회원 목록</h4>
              <div class="mb-2 d-flex justify-content-between align-items-center">
                <div class="flex-grow-1">
                	[총 회원수 1명] 검색결과 1건
                	<button class="btn btn-icon btn-link-warning avtar-xs"><i class="ph-duotone ph-star"></i></button>특별관리회원
                	<button class="btn btn-icon btn-link-danger avtar-xs"><i class="ph-duotone ph-warning-circle"></i></button>불량회원
                </div>
                <select class="form-select form-select-sm width-120px">
                  <option>10개씩 보기</option>
                  <option>20개씩 보기</option>
                  <option>30개씩 보기</option>
                  <option>40개씩 보기</option>
                  <option>50개씩 보기</option>
                  <option>100개씩 보기</option>
                  <option>200개씩 보기</option>
                </select>
              </div>
              <div class="mb-3">
                <button type="button" class="btn btn-outline-primary btn-sm">탈퇴</button>
              </div>
              
              <div class="table-responsive">
                <table class="table  table-bordered align-middle">
	                <thead class="text-center">
	                  <tr>
	                    <th scope="col"><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></th>
	                    <th scope="col">등록일</th>
	                    <th scope="col">이름</th>
	                    <th scope="col">아이디</th>
	                    <th scope="col">등급</th>
	                    <th scope="col">성별</th>
	                    <th scope="col">메일/SMS/메모</th>
	                    <th scope="col">관련 내역 보기</th>
	                  </tr>
	                </thead>
	                <tbody class="text-center ">
	                  <tr>
	                    <td><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></td>
	                    <td>2024-10-23</td>
	                    <td>한가인<button class="btn btn-icon btn-link-warning avtar-xs"><i class="ph-duotone ph-star"></i></button></td>
	                    <td>lorem</td>
	                    <td>일반회원</td>
	                    <td>여자</td>
	                    <td>
	                    	<button class="btn btn-icon btn-link-success avtar-xs"><i class="ph-duotone ph-envelope"></i></button>
	                    	<button class="btn btn-icon btn-link-success avtar-xs"><i class="ph-duotone ph-messenger-logo"></i></button>
	                    	<button class="btn btn-icon btn-link-warning avtar-xs"><i class="ph-duotone ph-notepad"></i></button>
	                    </td>
	                    <td>
		                    <button type="button" class="btn btn-outline-primary btn-sm">주문</button>
		                    <!-- <button type="button" class="btn btn-outline-primary">적립금</button>
		                    <button type="button" class="btn btn-outline-primary">쿠폰</button> -->
	                    </td>
	                  </tr>
	                </tbody>
	              </table>
              </div>
              <div class="no-result text-center mt-5 mb-5 visually-hidden">
                검색된 주문 회원 내역이 없습니다.
              </div>
            </div>
          </div>
        </div>
        <!-- [ block2 : 회원 목록 ] end -->
        <!-- [ block3 : 추가 설정 ] start -->
        <div class="col-lg-12">
          
        </div>
        <!-- [ block3 : 추가 설정 ] end -->
      </div>
    </div>
  </div>
  <!-- [ Main Content ] end -->

<!-- [Page Specific JS] start -->
  <script src="/static/assets/js/plugins/simple-datatables.js"></script>
  <!-- DatePicker js -->
  <script src="/static/assets/js/plugins/datepicker-full.min.js"></script>
	<script>
	document.title = "주문회원 조회 | Hermes Admin";

	(function () {
	  const datepicker_range = new DateRangePicker(document.querySelector('#datepicker_range'), {
	    buttonClass: 'btn'
	  });
	})();

	</script>
<!-- [Page Specific JS] end -->

<%@ include file="/WEB-INF/admin/common/footer.jsp" %>