<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			
			<div class="row">
				<div class="col-sm-12">
					<div class="card table-card">
						<div class="card-body p-3">
						
							<label class="form-label">기간:</label>
							<form class="row row-cols-md-auto g-1 align-items-center">
								<div class="col-12">
									<select class="form-select" id="inlineFormSelectPref">
										<option selected>Choose...</option>
										<option value="1">주문일</option>
										<option value="2">결제일</option>
										<option value="4">송장번호입력일</option>
										<option value="5">배송시작일</option>
										<option value="6">배송완료일</option>
									</select>
								</div>
								<div class="col-12">
									<button class="form-control">오늘</button>
								</div>
								<div class="col-12">
									<button class="form-control">7일</button>
								</div>
								<div class="col-12">
									<button class="form-control">15일</button>
								</div>
								<div class="col-12">
									<button class="form-control">1개월</button>
								</div>
								<div class="col-12">
									<button class="form-control">3개월</button>
								</div>
								<div class="col-12">
									<button class="form-control">6개월</button>
								</div>
								<div class="col-12">
									<div class="input-daterange input-group" id="datepicker_range">
										<input type="text" class="form-control text-left" placeholder="시작 날짜" name="range-start" >
										<input type="text" class="form-control text-end" placeholder="종료 날짜" name="range-end" >
									</div>	
								</div>
							</form>
							
							<label class="form-label pt-3">검색어:</label>
							<form class="row row-cols-md-auto g-1 align-items-center">
								<div class="col-12">
									<select class="form-select" aria-label="Default select example">
										<option value="1" selected>주문번호</option>
										<option value="2">운송장번호</option>
										<option value="3">주문자명</option>
										<option value="4">주문자 아이디</option>
										<option value="5">회원 이메일</option>
										<option value="6">회원 휴대폰번호</option>
										<option value="7">입금자명</option>
										<option value="8">수령자명</option>
										<option value="9">상품명</option>
										<option value="10">상품명</option>
										<option value="11">상품코드</option>
									</select>
								</div>
								<div class="col-12">
									<div class="input-group">
										<input type="text" class="form-control" placeholder="검색어를 입력하세요">
										<button class="btn btn-outline-primary pc-micon" type="button" id="button-addon2">+</button>
									</div>
								</div>
							</form>