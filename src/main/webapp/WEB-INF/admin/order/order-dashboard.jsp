<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp" %>

	<!-- [ Main Content ] start -->
	<div class="pc-container">
		
		<div class="pc-content">
			<!-- [ page title ] start -->
			<div class="page-header">
				<div class="page-block">
					<div class="row align-items-center">
						<div class="col-md-12">
							<div class="page-header-title">
								<h2 class="mb-0">주문 대쉬보드</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- [ page title ] end -->
			
			<div class="row">
				<!-- [ search order ] start -->
				<div class="col-sm-2 mb-5">
					<select class="form-select" aria-label="Default select example">
						<option value="1" selected>주문번호</option>
						<option value="2">휴대폰 번호</option>
						<option value="3">고객명</option>
						<option value="4">상품명</option>
					</select>
				</div>
				<div class="col-sm-10">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="20210708-0000012" aria-label="Recipient's username" aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary pc-micon" type="button" id="button-addon2">
							<i class="ph-duotone ph-magnifying-glass"></i>
						</button>
					</div>
				</div>
				<!-- [ search order ] end -->
				
				<!-- [ block1 : real time sales ] start -->
				<div class="col-sm-12">
					<div class="card table-card">
						<div class="card-body p-4 ">
							<div class="d-flex flex-row  align-items-end">
								<h4 class="mb-0 p-2 ">실시간 매출 현황</h4>
								<p class="mb-0 text-gray p-2 ">최종 업데이트 일시 : 2024-10-09 14:16 (실시간 조회)</p>
							</div>
							
							<div class="row">
								<table class="table col-md-12">
									<thead>
										<tr>
											<th scope="col" class="text-end col-4">구분</th>
											<th scope="col" class="text-end col-3">오늘</th>
											<th scope="col" class="text-end col-3">이번 달</th>
											<th scope="col" class="text-start col-2">바로가기</th>
										</tr>
									</thead>
									
									<tbody class="table-group-divider">
										<tr class="text-end">
											<th scope="row">
												<span>총 주문 금액</span>
												<button type="button" class="badge bg-light-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="
												총 주문 금액(건수)
												총 주문 금액(건수)는 해당 기간 내 발생한 주문의 금액 및 건수를 집계한 현황입니다.
												총 주문 금액에는 상품구매금액 및 배송비가 포함되어 있으며, 취소, 교환, 반품 시 반품배송비 등으로 인한 배송비 변동액도 포함하여 집계됩니다.
												주문조회 버튼 클릭 시 [주문 > 전체 주문 조회]로 이동하여 총 주문 목록을 확인할 수 있습니다.">Info
												</button>
											</th>
											<td>
												<div>
													<a href="#">원</a>
												</div>
												<div>
													<span>0건</span>
												</div>
											</td>
											<td>
												<div>
													<a href="#">원</a>
												</div>
												<div>
													<span>0건</span>
												</div>
											</td>
											<td class="text-start">
												<a href="#" class="btn btn-light-primary">주문조회</a>
											</td>
										</tr>
									
										<tr class="text-end">
											<th scope="row">
												<span>총 실 결제 금액</span>
												<button type="button" class="badge bg-light-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="
												총 실 결제금액(건수)
												총 실 결제 금액(건수)는 해당 기간 내 결제완료된 금액 및 건수를 집계한 현황입니다.
												총 실 결제 금액은 총 주문 금액에서 할인 및 적립금, 예치금, 네이버 포인트 등 부가결제 금액이 차감된 금액을 의미합니다.
												이 때, 취소, 교환, 반품 시 반품배송비 등으로 인한 배송비 변동액도 포함하여 집계됩니다.
												할인, 적립금, 예치금, 네이버 포인트 등 부가결제수단으로 결제 시에도 결제건수 집계에 포함됩니다.
												결제조회 버튼 클릭 시 [주문 > 전체 주문 조회]로 이동하여 실 결제 목록을 확인할 수 있습니다.">Info
												</button>
											</th>
											<td>
												<div>
													<a href="#">원</a>
												</div>
												<div>
													<span>0건</span>
												</div>
											</td>
											<td>
												<div>
													<a href="#">원</a>
												</div>
												<div>
													<span>0건</span>
												</div>
											</td>
											<td class="text-start">
												<a href="#" class="btn btn-light-primary">결제조회</a>
											</td>
										</tr>
									
										<tr class="text-end">
											<th scope="row">
												<span>총 환불 금액</span>
												<button type="button" class="badge bg-light-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="
												총 환불 금액(건수)
												총 환불금액(건수)는 취소, 교환, 반품에 의해 고객에게 환불된 금액과 건수 합계 정보를 집계한 현황입니다.
												환불 금액은 실제 고객에게 환불처리된 실 환불 금액 정보를 의미합니다.
												환불조회 버튼 클릭 시 [주문 > 취소/교환/반품/환불 > 환불 관리]로 이동하여 환불 목록을 확인할 수 있습니다.">Info
												</button>
											</th>
											<td>
												<div>
													<a href="#">원</a>
												</div>
												<div>
													<span>0건</span>
												</div>
											</td>
											<td>
												<div>
													<a href="#">원</a>
												</div>
												<div>
													<span>0건</span>
												</div>
											</td>
											<td class="text-start">
												<a href="#" class="btn btn-light-primary">환불조회</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- [ block1 : real time sales ] end -->
				
				<!-- [ block2 : to-do ] start -->
				<div class="col-sm-12">
					<div class="card table-card">
						<div class="card-body p-4 ">
							<div class="d-flex flex-row  align-items-end">
								<h4 class="mb-0 p-2 ">미 처리 주문</h4>
							</div>
							<div class="row">
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">입금전</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">배송준비중</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">배송보류중</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">배송중</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">취소</div>
										<div class="card-body">
											<p class="card-text text-center">신청 : 0</p>
											<p class="card-text text-center">처리 : 0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">교환</div>
										<div class="card-body">
											<p class="card-text text-center">신청 : 0</p>
											<p class="card-text text-center">처리 : 0</p>										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">반품</div>
										<div class="card-body">
											<p class="card-text text-center">신청 : 0</p>
											<p class="card-text text-center">처리 : 0</p>										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">환불</div>
										<div class="card-body">
											<p class="card-text text-center">신청 : 0</p>
											<p class="card-text text-center">처리 : 0</p>										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- [ block2 : to-do ] end -->
				
				<!-- [ block3 : done ] start -->
				<div class="col-sm-12">
					<div class="card table-card">
						<div class="card-body p-4 ">
							<div class="d-flex flex-row  align-items-end">
								<h4 class="mb-0 p-2 ">오늘 처리한 주문</h4>
							</div>
							<div class="row">
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">수동입금확인</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">자동입금확인</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">배송중 처리</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">배송완료</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">취소완료</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">교환완료</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>								</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">반품완료</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card bg-light">
										<div class="card-header text-center">환불완료</div>
										<div class="card-body">
											<p class="card-text text-center">0</p>								</div>
									</div>
								</div>
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

<script src="/assets/js/plugins/simple-datatables.js"></script>

<!-- [Page Specific JS] end -->

<%@ include file="/WEB-INF/admin/common/footer.jsp" %>