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
                <h2 class="mb-0">뉴스레터 구독자 관리</h2>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        
        <!-- [ block2 : 최근 가입 회원 ] start -->
        <div class="col-lg-6">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-2 pt-2 ">구독자 이메일 목록</h4>
              <div class="mb-2 d-flex justify-content-between align-items-center">
                <div class="flex-grow-1">
                	[총 회원수 1명] 검색결과 1건
                </div>
                <select class="form-select form-select-sm width-120px">
                  <option>10개씩 보기</option>
                  <option>20개씩 보기</option>
                  <option>30개씩 보기</option>
                  <option>40개씩 보기</option>
                  <option>50개씩 보기</option>
                  <option>100개씩 보기</option>
                  <option>200개씩 보기</option>
                  <option>500개씩 보기</option>
                  <option>1000개씩 보기</option>
                </select>
              </div>
              <div class="table-responsive">
                <table class="table  table-bordered align-middle">
	                <thead class="text-center">
	                  <tr>
	                    <th scope="col">No</th>
	                    <th scope="col">이메일</th>
	                  </tr>
	                </thead>
	                <tbody class="text-center ">
	                  <tr>
	                    <td>1</td>
	                    <td>superant621@gmail.com</td>
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
        <!-- [ block3 : done ] end -->
        
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