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
								<h2 class="mb-0">배송 관리</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- [ page title ] end -->
			
<%@ include file="/WEB-INF/admin/order/order-common.jsp" %>
							
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
							<h4 class="mb-2 pt-2 ">주문 목록</h4>
							
							<div class="mb-3">
								<button type="button" class="btn btn-outline-danger btn-sm">배송준비중처리</button>
								<button type="button" class="btn btn-outline-danger btn-sm">배송중처리</button>
								<button type="button" class="btn btn-outline-danger btn-sm">배송완료처리</button>
								<button type="button" class="btn btn-outline-danger btn-sm">송장번호저장</button>
								<button type="button" class="btn btn-outline-danger btn-sm">묶음배송처리</button>
								<button type="button" class="btn btn-outline-danger btn-sm">묶음배송해제</button>
								<button type="button" class="btn btn-outline-danger btn-sm">배송보류처리</button>
							</div>
							
							
							
							
							
							<ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
								<li class="nav-item">
									<a class="nav-link active text-uppercase" id="prepare-tab" data-bs-toggle="tab" href="#prepare"
								    role="tab" aria-controls="prepare" aria-selected="true">배송준비중</a>
								</li>
								<li class="nav-item">
									<a class="nav-link text-uppercase" id="ondelivery-tab" data-bs-toggle="tab" href="#ondelivery"
								    role="tab" aria-controls="ondelivery" aria-selected="false">배송중</a>
								</li>
								<li class="nav-item">
									<a class="nav-link text-uppercase" id="deliverd-tab" data-bs-toggle="tab" href="#deliverd"
								    role="tab" aria-controls="deliverd" aria-selected="false">배송완료</a>
								</li>
							</ul>
							<div class="tab-content" id="myTabContent">
								<div class="tab-pane fade show active" id="prepare" role="tabpanel" aria-labelledby="prepare-tab">
									<p class="mb-0">Lorem</p>
								</div>
								<div class="tab-pane fade" id="ondelivery" role="tabpanel" aria-labelledby="ondelivery-tab">
									<p class="mb-0">It is</p>
								</div>
								<div class="tab-pane fade" id="deliverd" role="tabpanel" aria-labelledby="deliverd-tab">
									<p class="mb-0">There</p>
								</div>
							</div>
							
							<div class="mb-2 d-flex justify-content-between align-items-center">
								<div class="flex-grow-1">
								[총 주문건수 1건] 검색결과 1건
								</div>
								<select class="form-select form-select-sm width-120px">
									<option>주문일순</option>
									<option>주문일역순</option>
									<option>총 실결제금액순</option>
									<option>총 실결제금액역순</option>
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
											<th scope="col">주문번호</th>
											<th scope="col">주문자</th>
											<th scope="col">주문자연락처</th>
											<th scope="col">상품명</th>
											<th scope="col">수량</th>
											<th scope="col">총 상품구매금액</th>
											<th scope="col">결제상태</th>
											<th scope="col">묶음배송</th>
											<th scope="col">수령자</th>
											<th scope="col">수령자연락처</th>
											<th scope="col">배송지주소</th>
											<th scope="col">배송상태</th>
											<th scope="col">운송장정보</th>
											<th scope="col">운송사명</th>
											<th scope="col">배송시작일</th>
											<th scope="col">배송완료일</th>
											<th scope="col">메모</th>
										</tr>
									</thead>
									<tbody class="text-center ">
										<tr>
											<td><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk"></td>
											<td>2024-10-15</td>
											<td>2304920349032</td>
											<td>한가인</td>
											<td>000-0000-0000</td>
											<td>Mini Kelly Double Tour 브레이슬릿</td>
											<td>1</td>
											<td>800,000</td>
											<td>완료</td>
											<td>1</td>
											<td>연정훈</td>
											<td>000-0000-0000</td>
											<td>서울시</td>
											<td>배송중</td>
											<td>238234792793</td>
											<td>한진택배</td>
											<td>2024-09-11</td>
											<td>2024-09-13</td>
											<td>없음</td>
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

				<div class="col-lg-12">
					<div class="card table-card">
						<div class="card-body p-4 ">													
							
							
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