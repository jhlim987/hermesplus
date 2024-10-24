<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<h2 class="mb-0">교환 관리</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- [ page title ] end -->

<%@ include file="/WEB-INF/admin/order/order-common.jsp" %>
																			
							<label class="form-label pt-3">CS 상태: </label>
							<form class="row row-cols-md-auto g-1 align-items-center">
								<div class="col-12">
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>전체</label>
									</div>
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>교환신청</label>
									</div>
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>교환처리중</label>
									</div>
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>교환완료</label>
									</div>
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>교환보류</label>
									</div>
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>접수거부/철회</label>
									</div>
								</div>  
							</form>
							
							<label class="form-label pt-3">결제 수단: </label>
							<form class="row row-cols-md-auto g-1 align-items-center">
								<div class="col-12">
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>Card</label>
									</div>
									<div class="form-check-inline">
										<input class="form-check-input" type="checkbox" value="" id="">
										<label>Cash</label>
									</div>
								</div>
							</form>
						</div>
            		</div>
				</div>
<!-- [ block1 : real time sales ] end -->
				
<!-- [ block2 : to-do ] start -->
				<div class="col-sm-12">
					<div class="card-body p-4 text-center">
						<div class="btn-group" role="group">
							<div class="text-center">
								<button type="button" class="btn btn-primary">검색</button>
								<button type="button" class="btn btn-light btn-outline-primary">검색조건저장</button>
								<button type="button" class="btn btn-light btn-outline-primary">초기화</button>
							</div>
						</div>
					</div>
				</div>
<!-- [ block2 : to-do ] end -->
				
<!-- [ block3 ] start -->
				<div class="col-lg-12">
					<div class="card table-card">
						<div class="card-body p-4 ">
							<h4 class="mb-2 pt-2 ">교환 주문 목록
								<button type="button" class="btn btn-icon btn-link-primary avtar-xs" data-bs-toggle="popover" 
								    data-bs-title="주문 목록"  data-bs-placement="bottom" data-bs-html="true"
								    data-bs-content="
									<ul>
										<li>주문을 삭제하면 주문 전체가 삭제상태로 변경되어 조회되지 않습니다.</li>
										<li>안내2</li>
										<li>안내3</li>
										<li>안내4</li>
										<li>안내5</li>
									</ul>">
									<i class="ti ti-info-circle"></i>
								</button>
							</h4>
							<div class="mb-2 d-flex justify-content-between align-items-center">
								<div class="flex-grow-1">
								[총 주문건수 1건] 검색결과 1건
								</div>
								<select class="form-select form-select-sm width-120px">
									<option>주문일순</option>
									<option>주문일역순</option>
									<option>교환신청일순</option>
									<option>교환신청일역순</option>
								</select>
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
											<th scope="col"><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></th>
											<th scope="col">주문일(결제일)</th>
											<th scope="col">교환신청일</th>
											<th scope="col">조치완료일</th>
											<th scope="col">교환 품목별 주문번호</th>
											<th scope="col">주문자</th>
											<th scope="col">상품명</th>
											<th scope="col">주문수량</th>
											<th scope="col">교환수량</th>
											<th scope="col">총 상품구매금액</th>
											<th scope="col">주문상태</th>
											<th scope="col">교환처리</th>
											<th scope="col">메모</th>
										</tr>
									</thead>
									<tbody class="text-center ">
										<tr>
											<td><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></td>
											<td>2024-10-15</td>
											<td>2024-10-15</td>
											<td>2024-10-15</td>
											<td>2304920349032</td>
											<td>한가인</td>
											<td>Mini Kelly Double Tour 브레이슬릿</td>
											<td>1</td>
											<td>1</td>
											<td>800,000</td>
											<td>배송완료</td>
											<td>교환접수</td>
											<td>N</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="no-result text-center mt-5 mb-5 visually-hidden">
							        검색된 주문 내역이 없습니다.
							</div>
							<div class="mb-3">
								<button type="button" class="btn btn-outline-danger btn-sm">주문 삭제</button>
							</div>
							
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled">
										<a class="page-link" href="#!" tabindex="-1">Previous</a>
									</li>
									<li class="page-item"><a class="page-link" href="#!">1</a></li>
									<li class="page-item"><a class="page-link" href="#!">2</a></li>
									<li class="page-item"><a class="page-link" href="#!">3</a></li>
									<li class="page-item">
										<a class="page-link" href="#!">Next</a>
									</li>
								</ul>
							</nav>
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