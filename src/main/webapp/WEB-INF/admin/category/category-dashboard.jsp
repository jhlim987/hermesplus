<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp"%>

<!-- [ Main Content ] start -->
<div class="pc-container">
	<div class="pc-content">
		<!-- [ page title ] start -->
		<div class="page-header">
			<div class="page-block">
				<div class="row align-items-center">
					<div class="col-md-12">
						<div class="page-header-title">
							<h2 class="mb-0">카테고리 관리</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [ page title ] end -->

		<div class="row">
			<!-- [ search order ] start -->
			<div class="col-sm-3 mb-5">
				<select class="form-select" aria-label="Default select example"
					id="mainCategorySelect" onchange="mainCategoryChange()">
					<option value="">1차카테고리 선택</option>
				</select>
			</div>
			<div class="col-sm-3 mb-5">
				<select class="form-select" aria-label="Default select example"
					id="subCategorySelect" onchange="subCategoryChange()">
					<option value="">2차카테고리 선택</option>
				</select>
			</div>
			<div class="col-sm-3 mb-5">
				<select class="form-select" aria-label="Default select example"
					id="detailCategorySelect" onchange="detailCategoryChange()">
					<option value="">3차카테고리 선택</option>
				</select>
			</div>
			<div class="col-sm-3">
				<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="카테고리명"
						aria-label="Recipient's username" aria-describedby="button-addon2">
					<button class="btn btn-outline-secondary pc-micon" type="button"
						id="button-addon2" style="margin-right: 10px;">
						<i class="ph-duotone ph-magnifying-glass"></i>
					</button>
					<a href="/application/ecom_product-add.html"
						class="btn btn-primary"> <i class="ti ti-plus f-18"></i> 카테고리
						추가
					</a>
				</div>
			</div>
			<!-- [ search order ] end -->

			<!-- [ block1 : real time sales ] start -->
			<div class="col-sm-12">
				<div class="card table-card">
					<div class="card-body p-4 ">
						<div class="d-flex flex-row align-items-end">
							<h4 class="mb-0 p-2 ">카테고리 목록</h4>
						</div>

						<div class="row">
							<table class="table col-md-12">
								<thead>
									<tr>
										<th scope="col" class="text-center col-4">1차 카테고리</th>
										<th scope="col" class="text-center col-3">2차 카테고리</th>
										<th scope="col" class="text-center col-3">3차 카테고리</th>
										<th scope="col" class="text-center col-2">수정 및 삭제</th>
									</tr>
								</thead>

								<tbody class="table-group-divider" id="categoryTableBody">
									<!-- JavaScript에서 동적으로 추가됩니다 -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- [ block1 : real time sales ] end -->
		</div>
	</div>
</div>
<!-- [ Main Content ] end -->

<!-- [Page Specific JS] start -->

<%@ include
	file="/WEB-INF/admin/category/category_js/categoryScript.jsp"%>
<script src="/assets/js/plugins/simple-datatables.js"></script>
<%@ include file="/WEB-INF/admin/common/footer.jsp"%>