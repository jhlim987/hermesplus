<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/admin/common/header.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<!-- [ Main Content ] start -->
<div class="pc-container">
	<div class="pc-content">
		<!-- [ breadcrumb ] start -->
		<div class="page-header">
			<div class="page-block">
				<div class="row align-items-center">
					<div class="col-md-12">
						<div class="page-header-title">
							<h2 class="mb-0">신규 상품 등록</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [ breadcrumb ] end -->
		<!-- [ Main Content ] start -->
		<div class="row">
			<!-- [ sample-page ] start -->
			<div class="col-sm-12">
				<div class="card table-card">
					<div class="card-body" style="padding: 0px;">
						<table class="table">
							<tr>
								<th class="text-center  col-sm-2"
									style="border-right: 1px solid #ccc;">카테고리 선택</th>
								<td>
									<div class="d-flex">
										<div class="col-sm-4">
											<select class="form-select"
												aria-label="Default select example" id="mainCategorySelect"
												onchange="mainCategoryChange()">
												<option value="">1차카테고리 선택</option>
											</select>
										</div>
										<div class="col-sm-4 ms-2">
											<!-- ms-2: 왼쪽 마진 추가 -->
											<select class="form-select"
												aria-label="Default select example" id="subCategorySelect"
												onchange="subCategoryChange()">
												<option value="">2차카테고리 선택</option>
											</select>
										</div>
										<div class="col-sm-4 ms-2">
											<!-- ms-2: 왼쪽 마진 추가 -->
											<select class="form-select"
												aria-label="Default select example"
												id="detailCategorySelect">
												<option value="">3차카테고리 선택</option>
											</select>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="text-center" colspan="2">
									<div class="col-sm-50">
										<button type="button" class="btn btn-primary"
											onclick="updateSelectedCategory()">추가</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="text-center col-sm-2"
									style="border-right: 1px solid #ccc;">선택된 카테고리</th>
								<td><input type="text" id="selectedCategory"
									class="form-control" style="font-weight: bold;" readonly></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="card table-card">
					<div class="card-body" style="padding: 0px;">
						<table class="table">
							<tr>
								<th class="text-center col-sm-2 ms-2"
									style="border-right: 1px solid #ccc;">상품코드</th>
								<td><input type="text" class="form-control" id="piCode"></td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">상품명</th>
								<td><input type="text" class="form-control" id="piName"></td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">가격</th>
								<td><input type="number" min="0" class="form-control"
									id="piPrice"></td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">색상</th>
								<td>
									<div id="colorInputContainer">
										<input type="text" class="form-control mb-2" readonly>
									</div>
									<button type="button" class="btn btn-dark"
										onclick="openColorSelection()">선택</button>
								</td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">사이즈</th>
								<td>
									<div id="sizeInputContainer">
										<input type="text" class="form-control mb-2" readonly>
									</div>
									<button type="button" class="btn btn-dark"
										onclick="openSizeSelection()">선택</button>
								</td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">상품
									주요 정보</th>
								<td>
									<div id="inputContainer">
										<input type="text" class="form-control mb-2">
									</div>
									<button type="button" class="btn btn-primary me-2"
										onclick="addInputField()">추가</button>
									<button type="button" class="btn btn-danger"
										onclick="removeLastInputField()">삭제</button>
								</td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">제품
									세부 정보</th>
								<td>
									<div class="d-flex align-items-center">
										<input type="number" min="0" class="form-control me-2"
											placeholder="제품 착용 모델의 키를 입력하세요." id="pdiHeight"> <input
											type="number" min="0" class="form-control me-2"
											placeholder="제품 착용 모델의 사이즈를 입력하세요." id="pdiSize">
									</div>
								</td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">소재</th>
								<td>
									<div class="d-flex align-items-center">
										<input type="text" id="selectedMaterial" data-material-id=""
											class="form-control me-2" readonly
											placeholder="선택버튼을 클릭하여 소재를 선택해주세요" id="pmName">
										<button type="button" class="btn btn-dark"
											onclick="openMaterialSelection()">선택</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">소재
									관리 방법</th>
								<td>
									<div class="d-flex align-items-center">
										<textarea id="selectedMaterialCare" class="form-control me-2"
											rows="4" readonly></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">제조국</th>
								<td><input type="text" class="form-control"
									id="piCountryOfOrigin"></td>
							</tr>
							<tr>
								<th class="text-center" style="border-right: 1px solid #ccc;">스토리
									비하인드</th>
								<td>
									<div class="d-flex align-items-center">
										<textarea class="form-control me-2" rows="3" id="piStory"></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<th class="text-center col-sm-2"
									style="border-right: 1px solid #ccc;">이미지 등록</th>
								<td>
									<div id="imagePreviewContainer" class="mt-3"></div> <input
									type="file" id="imageUpload" multiple accept="image/*"
									onchange="previewImages()">
								</td>
							</tr>
							<tr>
								<th colspan="2" class="text-center"
									style="border-right: 1px solid #ccc;">
									<button type="button" class="btn btn-primary me-2"
										onclick="addProduct()">제품등록</button>
								</th>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- [ sample-page ] end -->
	</div>
	<!-- [ Main Content ] end -->
</div>
<!-- [ Main Content ] end -->
<script>
//상품 DB에 등록
async function addProduct() {
    try {
        // 1. 제품 정보 수집
        const productData = {
            piCode: document.getElementById("piCode").value,
            piName: document.getElementById("piName").value,
            piPrice: document.getElementById("piPrice").value,
            piCountryOfOrigin: document.getElementById("piCountryOfOrigin").value,
            piMainCategoryId: parseInt(document.getElementById("mainCategorySelect").value),
            piSubCategoryId: parseInt(document.getElementById("subCategorySelect").value),
            piDetailCategoryId: parseInt(document.getElementById("detailCategorySelect").value),
            piStory: document.getElementById("piStory").value,
            colorIds: Array.from(document.querySelectorAll("#colorInputContainer .color-id-input"))
                .map(input => parseInt(input.value))
                .filter(value => !isNaN(value)),
            sizeIds: Array.from(document.querySelectorAll("#sizeInputContainer input"))
                .map(input => parseInt(input.dataset.sizeId))
                .filter(value => !isNaN(value)),
            materialIds: Array.from(document.querySelectorAll("#selectedMaterial"))
                .map(input => parseInt(input.getAttribute('data-material-id')))
                .filter(value => !isNaN(value)),
            mainInfos: Array.from(document.querySelectorAll("#inputContainer input"))
                .map(input => input.value)
                .filter(value => value !== ""),
            productDetailInfo: {
                pdiHeight: parseInt(document.getElementById("pdiHeight").value),
                pdiSize: parseInt(document.getElementById("pdiSize").value)
            }
        };

        // 이미지 파일 추가
        const imageFiles = document.getElementById("imageUpload").files;
        const formData = new FormData();
        formData.append("productData", new Blob([JSON.stringify(productData)], { type: "application/json" }));
        for (let i = 0; i < imageFiles.length; i++) {
            formData.append("images", imageFiles[i]);
        }

        // FormData 값 출력 (디버깅 용도)
        for (let pair of formData.entries()) {
            console.log(pair[0] + ', ' + pair[1]);
        }

        // 2. 제품 정보 서버에 저장 (ProductController 호출)
        const productResponse = await axios.post('/product', formData, {
            headers: { 'Content-Type': 'multipart/form-data' }
        });

        if (productResponse.status !== 200) {
            alert('상품 등록 중 오류가 발생했습니다. 다시 시도해주세요.');
            return;
        }

        alert('상품이 성공적으로 등록되었습니다!');
    } catch (error) {
        console.error('상품 등록 중 오류 발생:', error);
        alert('상품 등록 중 오류가 발생했습니다.');
    }
}

//각 속성 정보를 연결 테이블에 저장하는 함수들
async function saveProductColor(productId, colorId) {
    try {
        await axios.post('/productColorMapping', {
            piId: productId,
            pcId: colorId
        });
        console.log(`제품 ID ${productId}에 색상 ID ${colorId}가 저장되었습니다.`);
    } catch (error) {
        console.error('색상 정보 저장 중 오류:', error);
    }
}

async function saveProductSize(productId, sizeId) {
    try {
        await axios.post('/productSizeMapping', {
            piId: productId,
            psId: sizeId
        });
        console.log(`제품 ID ${productId}에 사이즈 ID ${sizeId}가 저장되었습니다.`);
    } catch (error) {
        console.error('사이즈 정보 저장 중 오류:', error);
    }
}

async function saveProductMaterial(productId, materialId) {
    try {
        await axios.post('/productMaterialMapping', {
            piId: productId,
            pmId: materialId
        });
        console.log(`제품 ID ${productId}에 소재 ID ${materialId}가 저장되었습니다.`);
    } catch (error) {
        console.error('소재 정보 저장 중 오류:', error);
    }
}

async function saveProductMainInfo(productId, mainInfo) {
    try {
        await axios.post('/productMainInfo', {
            piId: productId,
            mainInfo: mainInfo
        });
        console.log(`제품 ID ${productId}에 주요 정보가 저장되었습니다: ${mainInfo}`);
    } catch (error) {
        console.error('주요 정보 저장 중 오류:', error);
    }
}

//이미지 미리보기
function previewImages() {
    const imagePreviewContainer = document.getElementById('imagePreviewContainer');
    const files = document.getElementById('imageUpload').files;

    for (let i = 0; i < files.length; i++) {
        const file = files[i];

        if (!file.type.startsWith('image/')) { continue; }

        const img = document.createElement("img");
        img.classList.add("img-thumbnail", "me-2", "mb-2");
        img.style.width = "100px";
        img.style.height = "100px";
        img.file = file;
        imagePreviewContainer.appendChild(img);

        const reader = new FileReader();
        reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
        reader.readAsDataURL(file);
    }
}

//"선택" 버튼을 클릭하면 새 창을 엽니다.(소재)
  function openMaterialSelection() {
        const width = 600; // 새 창의 너비
        const height = 400; // 새 창의 높이
        const left = (window.screen.width / 2) - (width / 2); // 창을 화면 중앙에 놓기 위한 계산
        const top = (window.screen.height / 2) - (height / 2); // 창을 화면 중앙에 놓기 위한 계산

        // 새 창 열기
        window.open("product-insert-material", "소재 선택", `width=${width},height=${height},top=${top},left=${left}`);
    }

    // 선택된 소재를 부모 창의 소재 및 관리 방법 필드에 추가
    function updateMaterials(selectedMaterialId, selectedMaterialName) {
        const selectedMaterialField = document.getElementById("selectedMaterial");
        const careField = document.getElementById("selectedMaterialCare");

        // 선택된 소재의 정보를 설정
        selectedMaterialField.value = selectedMaterialName;
        selectedMaterialField.setAttribute('data-material-id', selectedMaterialId);

        // 관리 방법 필드를 초기화
        careField.value = "관리 방법을 불러오는 중...";

        // 소재 관리 방법 가져오기
        loadMaterialCare(selectedMaterialId);
    }

    // 소재 관리 방법을 불러와서 업데이트하는 함수
    function loadMaterialCare(materialId) {
        axios.get(`/productCareDescs?materialId=${materialId}`)
            .then(response => {
                
                let careDescription = "";

                if (Array.isArray(response.data)) {
                    // 배열에서 해당 materialId에 맞는 관리 방법 찾기
                    const matchingCare = response.data.find(care => care.pmId == parseInt(materialId, 10));
                    careDescription = matchingCare ? matchingCare.pcdDesc : "";
                } else {
                    // 객체 형태라면 직접 접근
                    careDescription = response.data.pcdDesc || response.data.description;
                }

                const careField = document.getElementById("selectedMaterialCare");

                // 관리 방법이 없는 경우 처리
                if (careDescription) {
                    careField.value = careDescription;
                } else {
                    careField.value = "관리 방법 정보가 없습니다.";
                }
            })
            .catch(error => {
                console.error('소재 관리 방법을 불러오는 중 오류 발생:', error);
                alert('소재 관리 방법을 불러오는 중 오류가 발생했습니다. 관리자에게 문의하세요.');
            });
    }

//"선택" 버튼을 클릭하면 새 창을 엽니다.(색상)
  function openColorSelection() {
        const width = 600; // 새 창의 너비
        const height = 400; // 새 창의 높이
        const left = (window.screen.width / 2) - (width / 2); // 창을 화면 중앙에 놓기 위한 계산
        const top = (window.screen.height / 2) - (height / 2); // 창을 화면 중앙에 놓기 위한 계산

        // 새 창 열기
        window.open("product-insert-color", "색상 선택", `width=${width},height=${height},top=${top},left=${left}`);
    }

    // 선택된 색상을 부모 창의 색상 필드에 추가
    function updateColors(selectedColors) {
    const colorInputContainer = document.getElementById("colorInputContainer");
    colorInputContainer.innerHTML = ""; // 기존의 input 필드를 모두 지웁니다.

    selectedColors.forEach(color => {
        const newInput = document.createElement("input");
        newInput.type = "hidden";
        newInput.value = color.id;  // 컬러 ID를 저장
        newInput.className = "color-id-input";
        colorInputContainer.appendChild(newInput);

        const colorNameInput = document.createElement("input");
        colorNameInput.type = "text";
        colorNameInput.value = color.name;  // 컬러 이름만 표시
        colorNameInput.className = "form-control mb-2";
        colorNameInput.readOnly = true;
        colorInputContainer.appendChild(colorNameInput);
    });
}



// "선택" 버튼을 클릭하면 새 창을 엽니다.(사이즈)
function openSizeSelection() {
        const width = 600; // 새 창의 너비
        const height = 400; // 새 창의 높이
        const left = (window.screen.width / 2) - (width / 2); // 창을 화면 중앙에 놓기 위한 계산
        const top = (window.screen.height / 2) - (height / 2); // 창을 화면 중앙에 놓기 위한 계산

        // 새 창 열기
        window.open("product-insert-size", "사이즈 선택", `width=${width},height=${height},top=${top},left=${left}`);
    }

//선택된 사이즈를 부모 창의 사이즈 필드에 추가
function updateSizes(selectedSizes) {
    const sizeInputContainer = document.getElementById("sizeInputContainer");
    sizeInputContainer.innerHTML = ""; // 기존의 input 필드를 모두 지웁니다.

    selectedSizes.forEach(size => {
        const newInput = document.createElement("input");
        newInput.type = "text";
        newInput.value = size.name;  // 사이즈 이름
        newInput.dataset.sizeId = size.id;  // 사이즈 ID를 data-size-id 속성에 저장
        newInput.className = "form-control mb-2";
        newInput.readOnly = true;
        sizeInputContainer.appendChild(newInput);
    });
}



	function addInputField() {
		const inputContainer = document.getElementById("inputContainer");
		const inputCount = inputContainer.getElementsByTagName("input").length;

		if (inputCount < 10) {
			// 새로운 input 요소 생성
			const newInput = document.createElement("input");
			newInput.type = "text";
			newInput.className = "form-control mb-2"; // 스타일 지정
			inputContainer.appendChild(newInput);
		} else {
			alert("최대 10개까지만 추가할 수 있습니다.");
		}
	}

	function removeLastInputField() {
		const inputContainer = document.getElementById("inputContainer");
		const inputCount = inputContainer.getElementsByTagName("input").length;

		if (inputCount > 1) {
			// 마지막 input 요소 제거
			inputContainer.removeChild(inputContainer.lastElementChild);
		} else {
			alert("최소 1개의 입력 필드는 필요합니다.");
		}
	}

	function updateSelectedCategory() {
		const mainCategorySelect = document
				.getElementById("mainCategorySelect");
		const subCategorySelect = document.getElementById("subCategorySelect");
		const detailCategorySelect = document
				.getElementById("detailCategorySelect");

		// 모든 카테고리가 선택되었는지 확인
		if (!mainCategorySelect.value || !subCategorySelect.value
				|| !detailCategorySelect.value) {
			alert("모든 카테고리를 선택해주세요.");
			return; // 카테고리가 모두 선택되지 않았으면 함수를 종료합니다.
		}

		const mainCategory = mainCategorySelect.selectedOptions[0].textContent;
		const subCategory = subCategorySelect.selectedOptions[0].textContent;
		const detailCategory = detailCategorySelect.selectedOptions[0].textContent;

		// 선택된 카테고리를 포맷팅
		const selectedCategory = [ mainCategory, subCategory, detailCategory ]
				.join(" > ");
		document.getElementById("selectedCategory").value = selectedCategory;
	}

	// 메인 카테고리 로드
	function loadMainCategories() {
		var xhr = new XMLHttpRequest();
		xhr.open("GET", "/mainCategories", true);
		xhr.setRequestHeader("Content-Type", "application/json");

		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status === 200) {
				var categories = JSON.parse(xhr.responseText);
				var mainCategorySelect = document
						.getElementById('mainCategorySelect');
				categories.forEach(function(category) {
					var option = document.createElement('option');
					option.value = category.mainCategoryId;
					option.text = category.mainCategoryName;
					mainCategorySelect.appendChild(option);
				});
			} else if (xhr.readyState === 4) {
				console.error("메인 카테고리 불러오기 중 오류:", xhr.status);
			}
		};
		xhr.send();
	}

	// 메인 카테고리 변경 시 서브 카테고리 로드
	function mainCategoryChange() {
		loadSubCategories();
	}

	// 서브 카테고리 변경 시 세부 카테고리 로드
	function subCategoryChange() {
		loadDetailCategories();
	}

	// 선택된 메인 카테고리에 따른 서브 카테고리 로드 함수
	function loadSubCategories() {
		var mainCategoryId = document.getElementById('mainCategorySelect').value;

		if (!mainCategoryId) {
			document.getElementById('subCategorySelect').innerHTML = '<option value="">카테고리를 선택해주세요</option>';
			return;
		}

		var xhr = new XMLHttpRequest();
		xhr.open("GET", "/mainSubCategories?mainCategoryId=" + mainCategoryId,
				true);
		xhr.setRequestHeader("Content-Type", "application/json");

		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4) {
				if (xhr.status === 200) {
					var subCategories = JSON.parse(xhr.responseText);
					var subCategorySelect = document
							.getElementById('subCategorySelect');
					subCategorySelect.innerHTML = '<option value="">2차카테고리 선택</option>'; // 이전 옵션 초기화

					subCategories.forEach(function(subCategory) {
						var option = document.createElement('option');
						option.value = subCategory.subCategoryId;
						option.text = subCategory.subCategoryName;
						subCategorySelect.appendChild(option);
					});

					// 서브 카테고리 로드 후 세부 카테고리 셀렉트 초기화
					document.getElementById('detailCategorySelect').innerHTML = '<option value="">서브 카테고리를 선택해주세요</option>';
				} else {
					console.error("서브 카테고리 불러오기 중 오류:", xhr.status,
							xhr.responseText);
					alert("서브 카테고리 불러오기 오류. 관리자에게 문의하세요.");
				}
			}
		};

		xhr.send();
	}

	// 선택된 서브 카테고리에 따른 세부 카테고리 로드 함수
	function loadDetailCategories() {
		var subCategoryId = document.getElementById('subCategorySelect').value;

		if (!subCategoryId) {
			document.getElementById('detailCategorySelect').innerHTML = '<option value="">서브 카테고리를 선택해주세요</option>';
			return;
		}

		var xhr = new XMLHttpRequest();
		xhr.open("GET", "/subDetailCategories?subCategoryId=" + subCategoryId,
				true);
		xhr.setRequestHeader("Content-Type", "application/json");

		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4) {
				if (xhr.status === 200) {
					var detailCategories = JSON.parse(xhr.responseText);
					var detailCategorySelect = document
							.getElementById('detailCategorySelect');
					detailCategorySelect.innerHTML = '<option value="">3차카테고리 선택</option>'; // 이전 옵션 초기화

					detailCategories.forEach(function(detailCategory) {
						var option = document.createElement('option');
						option.value = detailCategory.detailCategoryId;
						option.text = detailCategory.detailCategoryName;
						detailCategorySelect.appendChild(option);
					});
				} else {
					console.error("세부 카테고리 불러오기 중 오류:", xhr.status,
							xhr.responseText);
					alert("세부 카테고리 불러오기 오류. 관리자에게 문의하세요.");
				}
			}
		};

		xhr.send();
	}

	// 페이지 로드 시 메인 카테고리 로드 및 버튼 이벤트 등록
	window.onload = function() {
    loadMainCategories();
    const addButton = document.getElementById("addProductButton");
    if (addButton) {
        addButton.onclick = function() {
            addProduct();
        };
    }
};
</script>


<%@ include file="/WEB-INF/admin/common/footer.jsp"%>