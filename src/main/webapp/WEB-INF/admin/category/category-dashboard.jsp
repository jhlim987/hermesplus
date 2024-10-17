<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp"%>
<%@ include file="/WEB-INF/admin/category/category_js/categoryScript.jsp" %>



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
			<div class="col-sm-2 mb-5">
				<select class="form-select" aria-label="Default select example" id="mainCategorySelect" onchange="CategoryChange()">
					<option>1차카테고리</option>
				</select>
			</div>
			<div class="col-sm-2 mb-5">
				<select class="form-select" aria-label="Default select example" id="subCategorySelect" onchange="CategoryChange()">
					<option>2차카테고리</option>
				</select>
			</div>
			<div class="col-sm-2 mb-5">
				<select class="form-select" aria-label="Default select example"  id="detailCategorySelect" >
					<option>3차카테고리</option>
				</select>
			</div>
			<div class="col-sm-2 mb-5">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="카테고리명" aria-label="Recipient's username"
						aria-describedby="button-addon2">
					<button class="btn btn-outline-primary pc-micon" type="button" id="button-addon2">
						<i class="ph-duotone ph-magnifying-glass"></i>
					</button>
				</div>
			</div>
			<div class="col-sm-2 mb-5">
				<div class="input-group">
         	<a href="/application/ecom_product-add.html" class="btn btn-primary"> <i class="ti ti-plus f-18"></i> 카테고리 추가 </a>
         </div>
			</div>
			<!-- [ search order ] end -->

			<!-- [ block1 : real time sales ] start -->
			<div class="col-sm-12">
				<div class="card table-card">
					<div class="card-body p-4 ">
						<div class="d-flex flex-row  align-items-end">
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

								<tbody class="table-group-divider">
									<tr class="text-center">
										<th scope="row">
										<span id="mainCategory">1차 카테고리</span>
										</th>
										<td>
											<div>
												<span id="subCategory">2차 카테고리</span>
											</div>
										</td>
										<td>
											<div>
												<span id="detailCategory">3차 카테고리</span>
											</div>
										</td>
										<td class="text-center"><a href="#"
											class="btn btn-light-primary">수정</a> <a href="#"
											class="btn btn-light-primary">삭제</a></td>
									</tr>

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


<script>


</script>

<!-- [Page Specific JS] end -->


<script src="/assets/js/plugins/simple-datatables.js"></script>
<%@ include file="/WEB-INF/admin/common/footer.jsp"%>