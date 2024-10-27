package com.shop.hermesplus.product.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shop.hermesplus.product.mapper.ProductMapper;
import com.shop.hermesplus.product.vo.ProductColorMappingVO;
import com.shop.hermesplus.product.vo.ProductMainInfoVO;
import com.shop.hermesplus.product.vo.ProductMaterialMappingVO;
import com.shop.hermesplus.product.vo.ProductSizeMappingVO;
import com.shop.hermesplus.product.vo.ProductVO;

@Service
public class ProductService {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private ProductImgService productImgService;
	@Autowired
	private ProductColorMappingService productColorMappingService;
	@Autowired
	private ProductSizeMappingService productSizeMappingService;
	@Autowired
	private ProductMaterialMappingService productMaterialMappingService;
	@Autowired
	private ProductMainInfoService productMainInfoService;

	public List<ProductVO> selectProducts(ProductVO product) {
		return productMapper.selectProducts(product);
	}

	public ProductVO selectProduct(ProductVO product) {
		return productMapper.selectProduct(product);
	}

	public int insertProductWithDetails(ProductVO product, List<MultipartFile> images, List<Integer> colorIds,
			List<Integer> sizeIds, List<Integer> materialIds, List<String> mainInfos) throws IOException {

// 제품 정보 저장
		int result = productMapper.insertProduct(product);
		if (result > 0) {
			int productId = product.getPiId();

// 이미지 저장
			if (!images.isEmpty()) {
				productImgService.saveProductImages(productId, images);
			}

// 색상 매핑 저장
			for (Integer colorId : colorIds) {
				ProductColorMappingVO colorMapping = new ProductColorMappingVO();
				colorMapping.setPiId(productId);
				colorMapping.setPcId(colorId);
				productColorMappingService.addProductColorMapping(colorMapping);
			}

// 사이즈 매핑 저장
			for (Integer sizeId : sizeIds) {
				ProductSizeMappingVO sizeMapping = new ProductSizeMappingVO();
				sizeMapping.setPiId(productId);
				sizeMapping.setPsId(sizeId);
				productSizeMappingService.addProductSizeMapping(sizeMapping);
			}

// 소재 매핑 저장
			for (Integer materialId : materialIds) {
				ProductMaterialMappingVO materialMapping = new ProductMaterialMappingVO();
				materialMapping.setPiId(productId);
				materialMapping.setPmId(materialId);
				productMaterialMappingService.addProductMaterialMapping(materialMapping);
			}

// 주요 정보 저장
			for (String mainInfo : mainInfos) {
				ProductMainInfoVO mainInfoVO = new ProductMainInfoVO();
				mainInfoVO.setPiId(productId);
				mainInfoVO.setPmiDesc(mainInfo);
				productMainInfoService.addProductMainInfo(mainInfoVO);
			}
		}

		return result;
	}

	public int updateProduct(ProductVO product) {
		return productMapper.updateProduct(product);
	}

	public int deleteProduct(int pId) {
		return productMapper.deleteProduct(pId);
	}
}
