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
                <h2 class="mb-0">주문 회원 조회<button type="button" class="btn btn-icon btn-link-primary avtar-xs" data-bs-toggle="popover" 
                data-bs-title="주문 회원 조회"  data-bs-placement="bottom" data-bs-html="true"
                data-bs-content="
                <ul>
                  <li>쇼핑몰 회원을 주문 회원, 주문하지 않은 회원, 특별관리 회원으로 구분하여 조회할 수 있습니다.</li>
									<li>특별관리 회원은 [회원 정보 조회 > 회원 상세 정보] 에서 '특별관리 회원' 항목에 체크되어있는 회원을 의미합니다. 이 화면에서는 특별관리 회원 중에서도 주문내역이 있는 회원만 조회됩니다.</li>
									<li>구매금액과 구매건수는 최솟값 또는 최댓값만 입력 가능합니다.</li>
                </ul>">
                <i class="ti ti-info-circle"></i></button></h2>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        
        <!-- [ block1 : 회원 현황 ] start -->
        <div class="col-lg-3">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <div class="mb-4">
                <label class="form-label">회원구분:</label><br/>
                <div class="btn-group" role="group">
									<input type="radio" class="btn-check" id="userOrdered" name="memberGroup">
									<label class="btn btn-outline-info" for="userOrdered">주문회원</label>
									<input type="radio" class="btn-check" id="userUnordered" name="memberGroup">
									<label class="btn btn-outline-info" for="userUnordered">주문 안한 회원</label>
									<input type="radio" class="btn-check" id="userVip" name="memberGroup">
									<label class="btn btn-outline-info" for="userVip">특별관리회원</label>
								</div>
              </div>
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
                <label class="form-label">이름:</label>
                <div class="input-group mb-3">
								  <input type="text" class="form-control form-control-sm">
								</div>
              </div>
              <div class="mb-4">
                <label class="form-label">아이디:</label>
                <div class="input-group mb-3">
								  <input type="text" class="form-control form-control-sm">
								</div>
              </div>
              <div class="mb-4">
                <label class="form-label">주문번호:</label>
                <div class="input-group mb-3">
								  <input type="text" class="form-control form-control-sm">
								</div>
              </div>
              <div class="text-center">
                <button type="button" class="btn btn-primary">검색</button>
              </div>
            </div>
          </div>
        </div>
        <!-- [ block1 : 회원 현황 ] end -->
        
        <!-- [ block2 : 최근 가입 회원 ] start -->
        <div class="col-lg-9">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-2 pt-2">주문 회원 목록</h4>
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
                  <option>500개씩 보기</option>
                  <option>1000개씩 보기</option>
                </select>
              </div>
              <table class="table  table-bordered align-middle table-responsive">
                <thead class="text-center">
                  <tr>
                    <th scope="col"><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></th>
                    <th scope="col">No</th>
                    <th scope="col">최근 주문일</th>
                    <th scope="col">이름</th>
                    <th scope="col">아이디</th>
                    <th scope="col">회원등급</th>
                    <th scope="col">최근 주문번호</th>
                    <th scope="col">총 주문 금액</th>
                    <th scope="col">총 주문 건수</th>
                    <th scope="col">메일/SMS/메모</th>
                  </tr>
                </thead>
                <tbody class="text-center ">
                  <tr>
                    <td><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></td>
                    <td>1</td>
                    <td>2024-10-23</td>
                    <td>한가인<button class="btn btn-icon btn-link-warning avtar-xs"><i class="ph-duotone ph-star"></i></button></td>
                    <td>lorem</td>
                    <td>일반회원</td>
                    <td>20241024-00000001</td>
                    <td>200,000,000</td>
                    <td>50</td>
                    <td>
                    	<button class="btn btn-icon btn-link-success avtar-xs"><i class="ph-duotone ph-envelope"></i></button>
                    	<button class="btn btn-icon btn-link-success avtar-xs"><i class="ph-duotone ph-messenger-logo"></i></button>
                    	<button class="btn btn-icon btn-link-warning avtar-xs"><i class="ph-duotone ph-notepad"></i></button>
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