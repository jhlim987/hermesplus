<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp" %>
    <!-- [ Main Content ] start -->
    <div class="pc-container">
      <div class="pc-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
          <div class="page-block">
            <div class="row align-items-center">
              <div class="col-md-12">
                <div class="page-header-title">
                  <h2 class="mb-0">상품 대쉬보드</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
          <!-- [ sample-page ] start -->
          <div class="col-sm-2 mb-5">
			      <select class="form-select" aria-label="Default select example">
					    <option selected>주문번호</option>
					    <option value="1">휴대폰 번호</option>
					    <option value="2">고객명</option>
					    <option value="3">상품명</option>
					  </select>
				  </div>
				  <div class="col-sm-10">
				  	<div class="input-group mb-3">
					    <input type="text" class="form-control" placeholder="20210708-0000012" aria-label="Recipient's username" aria-describedby="button-addon2">
							<button class="btn btn-outline-secondary pc-micon" type="button" id="button-addon2"><i class="ph-duotone ph-magnifying-glass"></i></button>
					  </div>
				  </div>
				  <div class="col-sm-12">
            <div class="card table-card">
              <div class="card-body p-4 ">
              	<div clas="d-flex flex-row  align-items-end">
					  			<h4 class="mb-0 p-2 ">실시간 매출 현황</h4>
					  			<p class="mb-0 text-gray p-2 ">최종 업데이트 일시 : 2024-10-09 14:16 (실시간 조회)</p>
					  			
				  			</div>
				  			<div class="row">
									<table class="table col-md-12">
										<thead>
											<tr>
												<th scope="col" class="text-end col-4">구분</span></th>
												<th scope="col" class="text-end col-3">오늘</span></th>
												<th scope="col" class="text-end col-3">이번 달</span></th>
												<th scope="col" class="text-start col-2">바로가기</span></th>
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
													주문조회 버튼 클릭 시 [주문 > 전체 주문 조회]로 이동하여 총 주문 목록을 확인할 수 있습니다.">Info</button>
												</th>
												<td>
													<div>
														<a href="#">원</span>
													</div>
													<div>
														<span>0건</span>
													</div>
												</td>
												<td>
													<div>
														<a href="#">원</span>
													</div>
													<div>
														<span>0건</span>
													</div>
												</td>
												<td class="text-start"><a href="#" class="btn btn-light-primary">주문조회</a></td>
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
													결제조회 버튼 클릭 시 [주문 > 전체 주문 조회]로 이동하여 실 결제 목록을 확인할 수 있습니다.">Info</button>
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
												<td class="text-start"><a href="#" class="btn btn-light-primary">결제조회</a></td>
											</tr>
											
											<tr class="text-end">
												<th scope="row">
													<span>총 환불 금액</span>
													<button type="button" class="badge bg-light-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="
													총 환불 금액(건수)
													총 환불금액(건수)는 취소, 교환, 반품에 의해 고객에게 환불된 금액과 건수 합계 정보를 집계한 현황입니다.
													환불 금액은 실제 고객에게 환불처리된 실 환불 금액 정보를 의미합니다.
													환불조회 버튼 클릭 시 [주문 > 취소/교환/반품/환불 > 환불 관리]로 이동하여 환불 목록을 확인할 수 있습니다.">Info</button>
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
												<td class="text-start"><a href="#" class="btn btn-light-primary">환불조회</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
		  			</div>
	  			</div>
          <div class="col-sm-12">
            <div class="card table-card">
              <div class="card-body">
                  <div class="text-end p-sm-4 pb-sm-2">
                    <a href="/application/ecom_product-add.html" class="btn btn-primary"> <i class="ti ti-plus f-18"></i> Add Product </a>
                  </div>
                  <table class="table table-hover tbl-product" id="pc-dt-simple">
                    <thead>
                      <tr>
                        <th class="text-end">#</th>
                        <th>Product Detail</th>
                        <th>Categories</th>
                        <th class="text-end">Price</th>
                        <th class="text-end">Qty</th>
                        <th class="text-center">Brand</th>
                        <th class="text-center">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-1.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-1.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-2.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-2.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">5</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-3.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Fitbit MX30 Smart Watch</h6>
                              <p class="text-muted f-12 mb-0">(MX30- waterproof) watch</p>
                            </div>
                          </div>
                        </td>
                        <td>Fashion, Watch</td>
                        <td class="text-end">$49.9</td>
                        <td class="text-end">21</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-x-circle text-danger f-24" data-bs-toggle="tooltip" data-bs-title="danger"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-3.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-4.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-4.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-5.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-5.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>                  
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-4.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-4.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-5.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-5.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-1.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-1.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-2.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-2.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">5</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-3.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Fitbit MX30 Smart Watch</h6>
                              <p class="text-muted f-12 mb-0">(MX30- waterproof) watch</p>
                            </div>
                          </div>
                        </td>
                        <td>Fashion, Watch</td>
                        <td class="text-end">$49.9</td>
                        <td class="text-end">21</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-x-circle text-danger f-24" data-bs-toggle="tooltip" data-bs-title="danger"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-3.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-1.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-1.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-2.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-2.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">5</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-3.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Fitbit MX30 Smart Watch</h6>
                              <p class="text-muted f-12 mb-0">(MX30- waterproof) watch</p>
                            </div>
                          </div>
                        </td>
                        <td>Fashion, Watch</td>
                        <td class="text-end">$49.9</td>
                        <td class="text-end">21</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-x-circle text-danger f-24" data-bs-toggle="tooltip" data-bs-title="danger"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-3.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-4.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-4.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-5.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-5.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-4.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-4.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-5.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-5.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">7</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-1.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Apple Series 4 GPS A38 MM Space</h6>
                              <p class="text-muted f-12 mb-0">Apple Watch SE Smartwatch </p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Laptop</td>
                        <td class="text-end">$14.59</td>
                        <td class="text-end">70</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-check-circle text-success f-24" data-bs-toggle="tooltip" data-bs-title="success"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-1.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">2</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-2.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Boat On-Ear Wireless</h6>
                              <p class="text-muted f-12 mb-0">Mic(Bluetooth 4.2, Rockerz 450R</p>
                            </div>
                          </div>
                        </td>
                        <td>Electronics, Headphones</td>
                        <td class="text-end">$81.99</td>
                        <td class="text-end">45</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-clock-countdown text-warning f-24" data-bs-toggle="tooltip" data-bs-title="warning"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-2.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td class="text-end">5</td>
                        <td>
                          <div class="row">
                            <div class="col-auto pe-0">
                              <img src="/assets/images/application/img-prod-3.jpg" alt="user-image" class="wid-40 rounded" >
                            </div>
                            <div class="col">
                              <h6 class="mb-1">Fitbit MX30 Smart Watch</h6>
                              <p class="text-muted f-12 mb-0">(MX30- waterproof) watch</p>
                            </div>
                          </div>
                        </td>
                        <td>Fashion, Watch</td>
                        <td class="text-end">$49.9</td>
                        <td class="text-end">21</td>
                        <td class="text-center">
                          <i class="ph-duotone ph-x-circle text-danger f-24" data-bs-toggle="tooltip" data-bs-title="danger"></i>
                        </td>
                        <td class="text-center">
                          <img src="/assets/images/application/img-prod-brand-3.png" alt="user-image" class="wid-40" >
                          <div class="prod-action-links">
                            <ul class="list-inline me-auto mb-0">
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="View">
                                <a
                                  href="#"
                                  class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                  data-bs-toggle="offcanvas"
                                  data-bs-target="#productOffcanvas"
                                >
                                  <i class="ti ti-eye f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Edit">
                                <a href="/application/ecom_product-add.html" class="avtar avtar-xs btn-link-success btn-pc-default">
                                  <i class="ti ti-edit-circle f-18"></i>
                                </a>
                              </li>
                              <li class="list-inline-item align-bottom" data-bs-toggle="tooltip" title="Delete">
                                <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                  <i class="ti ti-trash f-18"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- [ sample-page ] end -->
        </div>
        <!-- [ Main Content ] end -->
      </div>
    </div>
    <!-- [ Main Content ] end -->
    <!-- [Page Specific JS] start -->
    <script src="/assets/js/plugins/simple-datatables.js"></script>
    <script>
      const dataTable = new simpleDatatables.DataTable('#pc-dt-simple', {
        sortable: false,
        perPage: 5
      });
    </script>
    <!-- [Page Specific JS] end -->
    
<%@ include file="/WEB-INF/admin/common/footer.jsp" %>