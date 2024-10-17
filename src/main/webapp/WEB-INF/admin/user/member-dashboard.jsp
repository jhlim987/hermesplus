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
                <h2 class="mb-0">고객 대쉬보드</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- [ page title ] end -->
      
      <div class="row">
        
        <!-- [ block1 : 회원 현황 ] start -->
        <div class="col-sm-12">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <h4 class="mb-0 p-2 ">회원 현황</h4>
              <table class="table  table-bordered">
							  <thead class="text-center">
							    <tr>
							      <th scope="col">신규회원
							        <button type="button" class="btn btn-icon btn-light-info" data-bs-toggle="popover" 
							        data-bs-title="신규회원"  data-bs-placement="bottom"
							        data-bs-content="오늘 기준으로 가입한 회원 수입니다.">
							        <i class="ti ti-info-circle"></i></button>
							      </th>
							      <th scope="col">방문회원
                      <button type="button" class="btn btn-icon btn-light-info" data-bs-toggle="popover" 
                      data-bs-title="방문회원"  data-bs-placement="bottom"
                      data-bs-content="오늘 기준으로 쇼핑몰에 로그인한 회원 수입니다.">
                      <i class="ti ti-info-circle"></i></button>
                    </th>
							      <th scope="col">탈퇴회원
                      <button type="button" class="btn btn-icon btn-light-info" data-bs-toggle="popover" 
                      data-bs-title="탈퇴회원"  data-bs-placement="bottom"
                      data-bs-content="최근 일주일 동안 탈퇴한 회원 수 입니다.">
                      <i class="ti ti-info-circle"></i></button>
							      </th>
							      <th scope="col">TOTAL
                      <button type="button" class="btn btn-icon btn-light-info" data-bs-toggle="popover" 
                      data-bs-title="TOTAL" data-bs-html="true" data-bs-placement="bottom"
                      data-bs-content="쇼핑몰의 총 회원 수 입니다.<br/>휴면회원은 쇼핑몰 총 회원수에서 제외됩니다.">
                      <i class="ti ti-info-circle"></i></button>
                    </th>
							    </tr>
							  </thead>
							  <tbody class="text-end">
							    <tr>
							      <td><strong class="text-decoration-underline fs-4" id="new">0</strong> 명</td>
							      <td><strong class="text-decoration-underline fs-4" id="visit">0</strong> 명</td>
							      <td><strong class="text-decoration-underline fs-4" id="cancel">0</strong> 명</td>
							      <td><strong class="text-decoration-underline fs-4" id="total">0</strong> 명</td>
							    </tr>
							  </tbody>
							</table>
            </div>
          </div>
        </div>
        <!-- [ block1 : 회원 현황 ] end -->
        
        <!-- [ block2 : 최근 가입 회원 ] start -->
        <div class="col-sm-12">
          <div class="card table-card">
            <div class="card-body p-4 ">
              <div class="d-flex flex-row  align-items-end">
                <h4 class="mb-0 p-2 ">최근 가입 회원
                   <button type="button" class="btn btn-icon btn-light-info" data-bs-toggle="popover" 
                   data-bs-title="최근 가입 회원"  data-bs-placement="bottom" data-bs-html="true"
                   data-bs-content="
                   <ul>
	                   <li>최근 가입일시 순으로 회원 3명까지 표기됩니다.</li>
                     <li>회원의 가입일시, 아이디, 이름, 메모, 등급/관계 정보를 확인할 수 있습니다.</li>
                     <li>메모는 해당 회원에 대해 메모가 작성되었을 경우 메모 내용을 확인할 수 있습니다.</li>
                   </ul>">
                   <i class="ti ti-info-circle"></i></button>
                </h4>
              </div>
              <table class="table  table-bordered">
                <thead class="text-center">
                  <tr>
                    <th scope="col">가입일시</th>
                    <th scope="col">아이디</th>
                    <th scope="col">이름</th>
                    <th scope="col">메모</th>
                  </tr>
                </thead>
                <tbody class="text-center visually-hidden">
                  <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
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
<script>
document.title = "고객 대쉬보드 | Hermes Admin";
</script>
<!-- [Page Specific JS] end -->

<%@ include file="/WEB-INF/admin/common/footer.jsp" %>