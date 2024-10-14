<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
   <!-- 로컬 CSS -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
   <link rel='stylesheet' href='/static/css/detail.css' />
   <!-- 로컬 js -->
   <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
   <script src='/static/js/script.js' defer></script>
   <script src='/static/js/detail.js' defer></script>
   <!-- 헤더 끝 기분좋아서 주석 쿠헤헤 -->
   <main id="main" class="margin-bottom-60">
      <div class="detail-container">
         <div class="back-button-area">
            <button class="back-button" role="link" onclick="location.href='list.html'">
               <div class="back-button-left"><svg xmlns="http://www.w3.org/2000/svg" width="27" height="16"
                     focusable="false" aria-hidden="true">
                     <g fill="none" fill-rule="evenodd" stroke="#333" stroke-linecap="round" stroke-width="2">
                        <path _ngcontent-hermes-c203198840="" d="M10 1L2 8l8 7M4 8h21.1874547"></path>
                     </g>
                  </svg></div>
               <div class="back-button-right"><a href="list.html" class=" back-text hide-in-mobile sr-only">돌아가기</a>
               </div>
            </button>
         </div>
         <div class="prd-section">
            <div class="right-column">
               <div class="prd-image-mobile swiperWrap">
                  <div class="swiper mySwiper">
                     <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="/static/product/1-1.webp" alt=""></div>
                        <div class="swiper-slide"><img src="/static/product/1-2.webp" alt=""></div>
                        <div class="swiper-slide"><img src="/static/product/1-3.webp" alt=""></div>
                        <div class="swiper-slide"><img src="/static/product/1-4.webp" alt=""></div>
                     </div>
                     <div class="swiper-pagination"></div>
                  </div>
               </div>
               <div class="prd-info">
                  <div class="prd-info-items" id="prdNamePrice">
                     <h2>셔츠 드레스</h2>
                     <p>&#x20A9; 2,980,000</p>
                  </div>
                  <div class="prd-info-items" id="prdColor">
                     <div class="prd-info-items-header">
                        <h4>컬러</h4>
                        <span>화이트</span>
                     </div>
                     <div class="prd-info-items-body flex border-top">
                        <div class="hidden" id="color-original-btn">
                           <input type="radio" id="colorWhite" name="color" value="white" checked>
                           <label for="colorWhite">white</label>
                           <input type="radio" id="colorIvory" name="color" value="ivory">
                           <label for="colorIvory">ivory</label>
                           <input type="radio" id="colorBeige" name="color" value="beige">
                           <label for="colorBeige">beige</label>
                        </div>
                        <button class="color-btn checked"><img src="/static/product/thumb/1-1.png" alt="화이트 셔츠 드레스"></button>
                        <button class="color-btn"><img src="/static/product/thumb/1-2.png" alt="화이트 셔츠 드레스"></button>
                        <button class="color-btn"><img src="/static/product/thumb/1-3.png" alt="화이트 셔츠 드레스"></button>
                     </div>
                  </div>
                  <div class="prd-info-items dropdown2" id="prdSize">
                     <div class="prd-info-items-header dropdown-btn js-dropdownbtn">
                        <h4>사이즈</h4>
                        <span class="dropdown-btn-toggler"></span>
                     </div>
                     <div class="prd-info-items-body dropdown js-dropdown">
                        <div class="hidden" id="size-original-btn">
                           <input type="radio" id="size34" name="size" value="34" checked>
                           <label for="size34">34</label>
                           <input type="radio" id="size36" name="size" value="36">
                           <label for="size36">36</label>
                           <input type="radio" id="size38" name="size" value="38">
                           <label for="size38">38</label>
                        </div>
                        <button class="size-btn checked" id="size1">34</button>
                        <button class="size-btn" id="size2">36</button>
                        <button class="size-btn" id="size3">38</button>
                     </div>
                  </div>
                  <div class="prd-info-items" id="prdCart">
                     <div class="prd-info-items-body">
                        <button class="cart-btn btn-200 btn-sm button-base button-primary">장바구니에 담기</button>
                     </div>
                  </div>
                  <div class="prd-info-items" id="prdExplaination">
                     <div class="prd-info-items-body">
                        <p>코튼 트윌 소재의 셔츠 드레스(코튼 100%)<br>
                           <br>
                           - 클래식 칼라<br>
                           - Clou de Selle 인그레이빙 자개 버튼 장식의 앞면 중앙 히든 버튼 페이싱 잠금장치<br>
                           - 에나멜 버튼 장식의 커프 잠금장치<br>
                           - 코튼 트윌 소재 매듭 벨트 허리 장식<br>
                           - “Caleche” 자수 장식의 앞면 포켓<br>
                           <br>
                           정사이즈입니다.<br>
                           <br>
                           프랑스 제조<br>
                        </p>
                     </div>
                  </div>
               </div><!--.prd-info-->
               <div class="prd-info prd-other-info accordian">
                  <div class="prd-info-items dropdown2" id="prd-detail">
                     <div class="prd-info-items-header dropdown-btn js-dropdownbtn">
                        <h4>제품 세부 정보</h4>
                        <span class="dropdown-btn-toggler"></span>
                     </div>
                     <div class="prd-info-items-body dropdown js-dropdown">
                        모델 정보 : 키 180cm, 38사이즈 착용
                     </div>
                  </div>
                  <div class="prd-info-items dropdown2" id="prd-add">
                     <div class="prd-info-items-header dropdown-btn js-dropdownbtn">
                        <h4>추가 정보</h4>
                        <span class="dropdown-btn-toggler"></span>
                     </div>
                     <div class="prd-info-items-body dropdown js-dropdown">
                        제조자: 에르메스셀리에 수입자: (유)에르메스코리아 세탁방법 및 취급 시 주의사항: 제품에 표시되어 있는 제품의 특성 및 취급 시 주의사항을 사용 전에 반드시 확인하여
                        주십시오. 제조연월: 제조일로부터 11개월 이내 제품만 판매합니다. 품질보증기준: 제품에 표시되어 있는 제품의 특성 및 취급주의사항을 사용 전에 반드시 확인하여 주십시오.
                        구매일로부터 1년 이내의 제품 이상인 경우, 보상은 무상 수선을 우선으로 하며, 수선 불가능 시에는 교환과 환불을 순차적으로 적용하여 진행하여 드립니다. 의류제품은 현
                        시즌의 제품에 한하여, 구매 증빙서류 확인 후에 사용 여부에 관계없이 제품의 고유 디자인을 바꾸지 않는 범위 내에서 무상 수선이 진행됩니다. (해외 및 면세 매장 구입
                        제품은 가죽제품을 제외한 기장 수선만 가능합니다.) 시즌이 지난 제품의 경우, 사용여부 및 품질보증기간에 관계없이 모두 유상 수선이 진행됩니다. 모든 제품의 드라이클리닝
                        비용은 고객 부담이며, 드라이클리닝으로 인해 발생한 제품의 손상은 당사의 책임이 아님을 알려드립니다. 수선은 구매 매장에 상관없이 (해외 및 면세제품 포함) 전 세계
                        에르메스 매장에서 접수 가능하며, 모든 수선 예상 비용 및 기간은 에르메스 아뜰리에의 전문 감정 후 책정됩니다.
                     </div>
                  </div>
                  <div class="prd-info-items dropdown2" id="prd-care">
                     <div class="prd-info-items-header dropdown-btn js-dropdownbtn">
                        <h4>관리</h4>
                        <span class="dropdown-btn-toggler"></span>
                     </div>
                     <div class="prd-info-items-body dropdown js-dropdown">
                        엄선된 소재로 제작된 의류입니다. 제품의 품질을 오랫동안 보존하기 위해 의류 안쪽의 케어라벨에 명시된 취급 시 주의사항을 확인하여 에르메스 스토어나 전문가에게 관리를
                        맡기시기 바랍니다. 궁금한 점이 있으신 경우 “문의하기”를 클릭하여 전화 또는 이메일로 고객 서비스팀에 연락하시거나 스토어로 방문해주십시오.
                     </div>
                  </div>
                  <div class="prd-info-items dropdown2" id="prd-delivery">
                     <div class="prd-info-items-header dropdown-btn js-dropdownbtn">
                        <h4>배송 및 반품</h4>
                        <span class="dropdown-btn-toggler"></span>
                     </div>
                     <div class="prd-info-items-body dropdown js-dropdown">
                        <h5>배송</h5>
                        <ul>
                           <li>모든 상품은 무료로 배송되며 배송 기간은 영업일 기준 13일 소요됩니다. (재고 이동이 필요한 상품의 경우 배송이 최대 510 영업일 지연될 수 있습니다.)
                           </li>
                           <li>스토어 픽업을 선택하신 경우 역시 스토어에 제품이 준비되는 기간은 영업일 기준 23일입니다.</li>
                           <li>일부 도서산간지역은 배송이 어려울 수 있으며 명절, 연말 등 배송 수요가 집중되는 기간에는 배송 기간이 임의로 변경될 수 있습니다. </li>
                           <li>고객의 단순변심으로 인한 환불 요청 시, 왕복 배송비 부담의 의무는 고객에게 있습니다. 자사의 배송 비용은 구매 상품의 가격에 따라 차등 적용됩니다. 구매
                              상품이 15만원 미만인 경우 편도 4,000원, 15만원 이상 100만원 이하인 경우 편도 12,000원, 100만원 초과 150만원 이하인 경우 편도
                              13,000원, 150만원 초과 200만원 이하인 경우 편도 15,000원, 200만원 초과인 경우 상품 가격의 1%가 편도 배송 비용으로 발생합니다. 반품
                              배송은 당사에서 지정한 배송사를 통해서만 진행되며 고객이 임의로 배송사를 지정하여 발송할 경우, 상품의 분실과 손상에 대하여 당사에서 책임 지지 않습니다.
                           </li>
                           <li>온라인 스토어 구매 상품은 오렌지박스, Bolduc리본, 쇼핑백 등 부띡 매장에서 사용하는 것과 동일한 포장재로 포장되어 배송됩니다. </li>
                           <li>배송과 관련된 자세한 안내는 자주 묻는 질문을 통해 확인해 주십시오. </li>
                        </ul>
                        <h5>결제수단</h5>
                        <ul>
                           <li>국내발행 신용카드</li>
                           <li>간편결제</li>
                        </ul>
                        <h5>교환/환불</h5>
                        <ul>
                           <li>환불을 희망하실 경우, 상품을 받은 날로부터 7일 이내 웹사이트 또는 에르메스 고객센터를 통해 환불 접수를 해주십시오. </li>
                           <li>부띡 매장에서는 온라인 스토어 구매 상품의 환불을 접수할 수 없습니다. </li>
                           <li>교환을 희망하실 경우, 상품을 받을 날로부터 30일 이내 가까운 부띡 매장을 찾아주십시오. </span>
                           <li>보안택을 훼손/제거하거나 인보이스가 없는 상품에 대해서는 교환/환불이 불가능합니다. </li>
                           <li>교환/환불 절차에 대한 자세한 안내는 자주 묻는 질문을 통해 확인해 주십시오. </span>
                        </ul>
                     </div>
                  </div>
                  <div class="prd-info-items dropdown2" id="prd-gift">
                     <div class="prd-info-items-header dropdown-btn js-dropdownbtn">
                        <h4>선물 하기</h4>
                        <span class="dropdown-btn-toggler"></span>
                     </div>
                     <div class="prd-info-items-body dropdown js-dropdown">
                        <ul>
                           <li>온라인 스토어 구매 상품은 오렌지박스, Bolduc리본, 쇼핑백 등 부띡 매장에서 사용하는 것과 동일한 포장재로 포장되어 배송됩니다. (향수, 승마용품 등 일부
                              상품 제외)</li>
                           <li>결제단계에서 선물을 위한 옵션을 선택하시면 직접 작성한 메시지가 적힌 기프트 카드와 가격이 포함되지 않은 인보이스를 함께 보내 드립니다. </li>
                           <li>선물 받으신 분이 교환을 희망하실 경우, 가까운 부띡 매장을 찾아주십시오. 더 궁금한 사항은 에르메스 고객센터로 연락 주십시오.</li>
                        </ul>
                     </div>
                  </div>
                  <div class="prd-info-items" id="prd-etc">
                     <div class="prd-info-items-body">
                        <p>제품 번호: H4E0501DV9036<br><br>
                           더 자세히 알고 싶으신가요?
                           <a href="contact.html" class="text-decoration-underline">고객 서비스에 문의하기</a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="left-column">
               <div class="prd-image-section">
                  <div class="thumb-list">
                     <a class="thumb-item on" href="/static/product/detail/b11.webp"><img src="/static/product/thumb/1-1.png"
                           alt="보기: 이미지: 제품 착용 이미지, 셔츠 드레스"></a>
                     <a class="thumb-item" href="/static/product/detail/b12.webp"><img src="/static/product/thumb/1-2.png"
                           alt="보기: 이미지: 제품 착용 이미지, 셔츠 드레스"></a>
                     <a class="thumb-item" href="/static/product/detail/b13.webp"><img src="/static/product/thumb/1-3.png"
                           alt="보기: 이미지: 제품 착용 이미지, 셔츠 드레스"></a>
                     <a class="thumb-item" href="/static/product/detail/b14.webp"><img src="/static/product/thumb/1-4.png"
                           alt="보기: 이미지: 제품 착용 이미지, 셔츠 드레스"></a>
                  </div>
                  <div class="prd-image">
                     <img src="/static/product/detail/b11.webp">
                  </div>
               </div><!--.prd-image-section-->
               <div class="prd-story">
                  <h3>스토리 비하인드</h3>
                  <p> 허리 부분에 벨트가 장식된 코튼 트윌 셔츠 드레스는 여름과 겨울 시즌에 모두 활용할 수 있는 에르메싀의 필수 아이템입니다.</p>
               </div>
               <div class="related-prd">
                  <h3>완벽한 파트너</h3>
                  <ul>
                     <li>
                        <a href="#">
                           <img src="/static/product/p1.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">Iena 뮬</p>
                              <p class="add-prd-info-price">₩ 1,440,000</p>
                           </div>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <img src="/static/product/p2.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">Eau des Merveilles Bleue 오 드 뚜왈렛</p>
                              <p class="add-prd-info-price">₩ 163,000</p>
                           </div>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <img src="/static/product/p3.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">H Torsade 벨트 버클 & 리버서블 가죽 스트랩 24mm</p>
                              <p class="add-prd-info-price">₩ 1,090,000</p>
                           </div>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <img src="/static/product/p4.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">Hermes Cut 워치라지 모델36mm</p>
                              <p class="add-prd-info-price">₩ 22,050,000</p>
                           </div>
                        </a>
                     </li>
                  </ul>
               </div>
               <div class="related-prd">
                  <h3>계속 탐색하기</h3>
                  <ul>
                     <li>
                        <a href="#">
                           <img src="/static/product/e1.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">캐럿 팬츠</p>
                              <p class="add-prd-info-price">₩ 2,490,000</p>
                           </div>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <img src="/static/product/e2.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">캐시미어 팬츠</p>
                              <p class="add-prd-info-price">₩ 3,810,000</p>
                           </div>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <img src="/static/product/e3.webp" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">“Naoussa” 크롭 팬츠</p>
                              <p class="add-prd-info-price">₩ 2,150,000</p>
                           </div>
                        </a>
                     </li>
                     <li>
                        <a href="#">
                           <img src="/static/product/e4.jfif" alt="">
                           <div class="add-prd-info">
                              <p class="add-prd-info-name">팬츠</p>
                              <p class="add-prd-info-price">₩ 1,990,000</p>
                           </div>
                        </a>
                     </li>
                  </ul>
               </div>
            </div>
         </div><!-- .prd-section -->
         <div class="zoom">
            <div class="zoom-thumb-list">
               <a href="/static/product/detail/b11.webp" class="zoom-thumb-item on"><img src="/static/product/thumb/1-1.png" alt=""></a>
               <a href="/static/product/detail/b12.webp" class="zoom-thumb-item"><img src="/static/product/thumb/1-2.png" alt=""></a>
               <a href="/static/product/detail/b13.webp" class="zoom-thumb-item"><img src="/static/product/thumb/1-3.png" alt=""></a>
               <a href="/static/product/detail/b14.webp" class="zoom-thumb-item"><img src="/static/product/thumb/1-4.png" alt=""></a>
            </div>
            <div class="zoom-big-img">
               <img src="/static/product/detail/b11.webp" alt="">
            </div>
            <div class="zoom-range">
               <div class="zoom-close-wrap">
                  <button class="zoom-close">
                     <span class="sr-only">닫기</span>
                  </button>
               </div>
               <div class="zoom-plus-minus-wrap">
                  <button class="plus">
                     <span class="sr-only">확대</span>
                     <svg _ngcontent-hermes-c1604145409="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 43 43" width="43" height="43" focusable="false"><g _ngcontent-hermes-c1604145409="" fill="none" fill-rule="evenodd" stroke="#333" stroke-width="2" transform="translate(1 1)"><circle _ngcontent-hermes-c1604145409="" cx="20.5" cy="20.5" r="20.5" fill="transparent"></circle><path _ngcontent-hermes-c1604145409="" stroke-linecap="round" d="M14 20.5h13M20.5 14v13"></path></g></svg>
                  </button>
                  <div class="zoom-scroll">
                     <div class="zoom-scroll-thumb"></div>
                  </div>
                  <button class="minus">
                     <span class="sr-only">축소</span>
                     <svg _ngcontent-hermes-c1604145409="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 40 40" width="43" height="43" focusable="false"><g _ngcontent-hermes-c1604145409="" fill="none" fill-rule="evenodd" stroke="#333" stroke-width="2"><circle _ngcontent-hermes-c1604145409="" cx="20" cy="20" r="19" fill="transparent"></circle><path _ngcontent-hermes-c1604145409="" stroke-linecap="round" d="M14 20.5h13"></path></g></svg>
                  </button>
               </div>
            </div>
         </div>
      </div><!-- .main-container-->
   </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>