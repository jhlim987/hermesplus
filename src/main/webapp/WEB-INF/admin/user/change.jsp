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
                <h2 class="mb-0">휴면 회원 전환 대상자 조회</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        <!-- [ block1 : 회원 검색 ] start -->
        <div class="col-lg-12">
        	<div class="card table-card">
            <div class="card-body p-4 ">
              <div class="mb-4">
                <label class="form-label">회원 정보:</label>
                <select class="form-select form-select-sm mb-2 ">
                  <option>아이디</option>
                  <option>이름</option>
                  <option>휴대폰번호</option>
                  <option>이메일</option>
                  <option>휴면 처리일</option>
                </select>
                <div class="input-group mb-3">
								  <input type="text" class="form-control form-control-sm">
	                <button type="button" class="btn btn-primary">검색</button>
								</div>
              </div>
            </div>
          </div>
        </div>
        <!-- [ block1 : 회원 검색 ] end -->
        
        <!-- [ block2 : 회원 목록 ] start -->
        <div class="col-lg-12">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-2 pt-2 ">휴면 회원 목록</h4>
              <div class="mb-2 d-flex justify-content-between align-items-center">
                <div class="flex-grow-1">
                	[총 휴면회원 1명] 검색결과 1건
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
              <table class="table  table-bordered align-middle table-responsive">
                <thead class="text-center">
                  <tr>
                    <th scope="col">휴면 처리일</th>
                    <th scope="col">아이디</th>
                    <th scope="col">이름</th>
                    <th scope="col">이메일</th>
                    <th scope="col">휴대폰 번호</th>
                    <th scope="col">성별</th>
                  </tr>
                </thead>
                <tbody class="text-center ">
                  <tr>
                    <td>2024-10-23</td>
                    <td>lorem</td>
                    <td>한가인</td>
                    <td>lorem@ipsum.com</td>
                    <td>010-1234-1234</td>
                    <td>여자</td>
                  </tr>
                </tbody>
              </table>
              <div class="no-result text-center mt-5 mb-5 visually-hidden">
                검색된 회원 내역이 없습니다.
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