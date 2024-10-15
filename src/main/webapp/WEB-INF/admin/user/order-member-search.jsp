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
                <h2 class="mb-0">주문회원 조회</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        
        <!-- [ block1 : 회원 현황 ] start -->
        <div class="col-lg-4">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <label class="form-label">개인정보:</label>
              <div class="mb-4">
                <select class="form-select form-select-sm mb-2 ">
                  <option>이름</option>
                  <option>아이디</option>
                  <option>이메일</option>
                  <option>휴대폰번호</option>
                </select>
                <input class="form-control form-control-sm" type="text" placeholder="">
              </div>
              <div class="mb-4">
                <label class="form-label">회원유형:</label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="memberType" id="memberTypeAll">
                   <label class="form-check-label" for="memberTypeAll">전체</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="memberType" id="memberTypeVIP">
                   <label class="form-check-label" for="memberTypeVIP">특별관리회원</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="memberType" id="memberTypeBlack">
                   <label class="form-check-label" for="memberTypeBlack">불량회원</label>
                </div>
              </div>
              <div class="mb-4">
                <label class="form-label">성별:</label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" id="genderTypeAll">
                  <label class="form-check-label" for="genderTypeAll">전체</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" id="genderTypeMale">
                  <label class="form-check-label" for="genderTypeMale">남</label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="gender" id="genderTypeFemale">
                  <label class="form-check-label" for="genderTypeFemale">여</label>
                </div>
              </div>
              <div class="mb-4">
	              <label class="form-label">주문일 / 결제완료일:</label>
                <select class="form-select form-select-sm mb-2">
                  <option>주문일</option>
                  <option>결제완료일</option>
                </select>
                <div class="input-daterange input-group " id="datepicker_range">
                  <input type="text" class="form-control text-left" placeholder="시작 날짜" name="range-start" >
                  <input type="text" class="form-control text-end" placeholder="종료 날짜" name="range-end" >
                </div>
              </div>
              <div class="mb-4">
                <label class="form-label">주문상품:</label>
                <div class="input-group mb-3">
								  <input type="text" class="form-control form-control-sm" disabled>
								  <button class="btn btn-sm btn-light-primary" type="button" id="prdSearch">상품 검색</button>
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
        <div class="col-sm-8">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-0 p-2 ">회원 목록
                <button type="button" class="btn btn-icon btn-light-info" data-bs-toggle="popover" 
                data-bs-title="회원 목록"  data-bs-placement="bottom" data-bs-html="true"
                data-bs-content="
                <ul>
                  <li>삭제 시 회원의 미완료 주문 여부, 적립금 여부를 확인하며 미완료 주문이 있는 경우 삭제되지 않습니다.</li>
									<li>[자세히보기]를 체크하면 각 회원의 적립금, 예치금, 접속, 주문, 총 주문금액, 총 실결제금액을 확인할 수 있습니다.</li>
									<li>해당 기능은 100개 이하 목록에서는 바로 확인할 수 있으며, 200개 이상은 [관련 내역 보기]의 각 버튼을 통해 확인할 수 있습니다.</li>
									<li>휴면회원의 개인정보는 분리, 보관되어 쇼핑몰 관리자의 '고객관리 > 회원관리 > 휴면회원 관리'에서 별도로 조회할 수 있으며, 휴면회원이 로그인시 자동으로 휴면해제가 됩니다.</li>
									<li>일반전화 또는 스마트폰 아이콘을 클릭하면 전화상담메모 창을 띄웁니다.</li>
                </ul>">
                <i class="ti ti-info-circle"></i></button>
              </h4>
              <div class="mb-2 d-flex justify-content-between align-items-center">
                <div class="flex-grow-1">[총 회원수 1명] 검색결과 1건</div>
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
              <div class="mb-3">
                <button type="button" class="btn btn-outline-secondary btn-sm">불량회원 설정</button>
                <button type="button" class="btn btn-outline-danger btn-sm">탈퇴 / 삭제</button>
              </div>
              <table class="table  table-bordered">
                <thead class="text-center">
                  <tr>
                    <th scope="col"><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></th>
                    <th scope="col">등록일</th>
                    <th scope="col">이름</th>
                    <th scope="col">아이디</th>
                    <th scope="col">등급</th>
                    <th scope="col">휴대전화</th>
                    <th scope="col">메일/SMS/메모</th>
                    <th scope="col">관련 내역 보기</th>
                  </tr>
                </thead>
                <tbody class="text-center ">
                  <tr>
                    <td><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></td>
                    <td>2024-10-15</td>
                    <td>한가인</td>
                    <td>lorem</td>
                    <td>일반회원</td>
                    <td>01012341234</td>
                    <td>메일 O / SMS O / 메모 O</td>
                    <td>
	                    <button type="button" class="btn btn-outline-primary">주문</button>
	                    <button type="button" class="btn btn-outline-primary">적립금</button>
	                    <button type="button" class="btn btn-outline-primary">쿠폰</button>
                    </td>
                  </tr>
                </tbody>
              </table>
              <div class="no-result text-center mt-5 mb-5 visually-hidden">
                검색된 주문 회원 내역이 없습니다.
              </div>
              <div class="mb-3">
                <button type="button" class="btn btn-outline-secondary btn-sm">불량회원 설정</button>
                <button type="button" class="btn btn-outline-danger btn-sm">탈퇴 / 삭제</button>
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