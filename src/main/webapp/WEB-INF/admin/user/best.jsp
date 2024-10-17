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
                <h2 class="mb-0">구매액 상위 회원 조회<button type="button" class="btn btn-icon btn-link-primary avtar-xs" data-bs-toggle="popover" 
                data-bs-title="구매액 상위 회원 조회"  data-bs-placement="bottom" data-bs-html="true"
                data-bs-content="
                <ul>
                  <li>쇼핑몰 구매액이 높은 회원을 조회할 수 있습니다.</li>
									<li>구매액 상위 회원에 대한 관리를 통해 지속적인 구매 유도 및 충성고객 확보 효과를 기대할 수 있습니다.</li>
									<li>조회 시 기준은 총 주문금액 또는 총 실결제금액 중 선택할 수 있습니다.</li>
                </ul>">
                <i class="ti ti-info-circle"></i></button></h2>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        
        <!-- [ block1 : 구매액 상위 회원 조회 ] start -->
        <div class="col-lg-4">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <div class="mb-4">
                <label class="form-label">기간:</label><br/>
                <div class="btn-group mb-3" role="group">
									<input type="radio" class="btn-check" id="today" name="period">
									<label class="btn btn-outline-info" for="today">오늘</label>
									<input type="radio" class="btn-check" id="three" name="period">
									<label class="btn btn-outline-info" for="three">3일</label>
									<input type="radio" class="btn-check" id="seven" name="period">
									<label class="btn btn-outline-info" for="seven">7일</label>
									<input type="radio" class="btn-check" id="month" name="period">
									<label class="btn btn-outline-info" for="month">1개월</label>
								</div>
								<div class="input-daterange input-group " id="datepicker_range">
                  <input type="text" class="form-control text-left" placeholder="시작 날짜" name="range-start" >
                  <input type="text" class="form-control text-end" placeholder="종료 날짜" name="range-end" >
                </div>
              </div>
              <div class="text-center">
                <button type="button" class="btn btn-primary">검색</button>
              </div>
            </div>
          </div>
        </div>
        <!-- [ block1 : 구매액 상위 회원 조회 ] end -->
        
        <!-- [ block2 : 구매액 상위 회원 목록 ] start -->
        <div class="col-lg-8">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-2 pt-2 ">구매액 상위 회원 목록</h4>
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
	              <table class="table  table-bordered align-middle table-responsive">
	                <thead class="text-center">
	                  <tr>
	                    <th scope="col">순위</th>
	                    <th scope="col">아이디</th>
	                    <th scope="col">이름</th>
	                    <th scope="col">휴대폰번호</th>
	                    <th scope="col">주소</th>
	                    <th scope="col">기간내 총 주문금액</th>
	                  </tr>
	                </thead>
	                <tbody class="text-center ">
	                  <tr>
	                    <td>1</td>
	                    <td>lorem</td>
	                    <td>한가인</td>
	                    <td>010-2831-8705</td>
	                    <td>경기 하남시 미사강변동로 85 힐스테이트에코미사 305, 6, 7 ,8호</td>
	                    <td>200,000,000</td>
	                  </tr>
	                </tbody>
	              </table>
              </div>
              <div class="no-result text-center mt-5 mb-5 visually-hidden">
                검색된 회원 내역이 없습니다.
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