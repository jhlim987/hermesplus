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
								<h2 class="mb-0">추소/교환/반품/환불</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- [ page title ] end -->
			
			<div class="row">
<!-- [ search order admin>order 공통 ] start -->
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
<!-- [ search order admin>order 공통 ] end -->
				
<!-- [ block1 : real time sales ] start -->
				<div class="col-sm-12">
					<div class="card table-card">
						<div class="card-body p-4 ">
							<div class="d-flex flex-row  align-items-end">
								<h4 class="mb-0 p-2 ">BLOCK 1</h4>
							</div>
							<div class="row">
								
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
								<h4 class="mb-0 p-2 ">BLOCK 2</h4>
							</div>
							<div class="row">
																
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
								<h4 class="mb-0 p-2 ">BLOCK 3</h4>
							</div>
							<div class="row">
								
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