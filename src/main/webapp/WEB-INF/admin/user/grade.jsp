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
                <h2 class="mb-0">회원등급별 회원관리<button type="button" class="btn btn-icon btn-link-primary avtar-xs" data-bs-toggle="popover" 
                data-bs-title="회원등급별 회원관리"  data-bs-placement="bottom" data-bs-html="true"
                data-bs-content="
                <ul>
                  <li>회원을 선택하고 '등급해제 '버튼을 누르면, 해당 회원은 기본회원등급(신규가입시 설정되는 등급)으로 변경됩니다.</li>
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
                <label class="form-label">결과 내 검색:</label>
                <select class="form-select form-select-sm mb-2 ">
                  <option>아이디</option>
                  <option>이름</option>
                </select>
                <div class="input-group mb-3">
								  <input type="text" class="form-control form-control-sm">
	                <button type="button" class="btn btn-primary">검색</button>
								</div>
              </div>
            </div>
          </div>
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h5 class="mb-4 pt-2">추가 설정</h5>
              <div class="mb-4">
              	<label class="form-label">회원등급 변경:</label><br/>
              	선택된 회원을
                <select class="form-select form-select-sm mb-2 width-120px d-inline-block">
                  <option>블랙</option>
                  <option>실버</option>
                  <option>골드</option>
                  <option>다이아</option>
                </select>
                으로 <button type="button" class="btn btn-outline-primary btn-sm ">등급 변경</button>합니다.
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
              <table class="table  table-bordered align-middle table-responsive">
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