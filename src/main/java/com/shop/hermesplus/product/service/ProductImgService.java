package com.shop.hermesplus.product.service;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shop.hermesplus.product.mapper.ProductImgMapper;
import com.shop.hermesplus.product.vo.ProductImgVO;

@Service
public class ProductImgService {
    @Autowired
    ProductImgMapper productImgMapper;

    public List<ProductImgVO> selectProductImgs(ProductImgVO productImg) {
        return productImgMapper.selectProductImgs(productImg);
    }

    public ProductImgVO selectProductImg(ProductImgVO productImg) {
        return productImgMapper.selectProductImg(productImg);
    }

    public int insertProductImg(ProductImgVO productImg) {
        return productImgMapper.insertProductImg(productImg);
    }

    public int updateProductImg(ProductImgVO productImg) {
        return productImgMapper.updateProductImg(productImg);
    }

    public int deleteProductImg(int piId) {
        return productImgMapper.deleteProductImg(piId);
    }

    public int saveProductImages(int productId, List<MultipartFile> imageFiles) throws IOException {
        String uploadDir = new File("").getAbsolutePath() + "/src/main/webapp/admin/product/images";
        int result = 0;

        for (MultipartFile imageFile : imageFiles) {
            String fileName = System.currentTimeMillis() + "_" + imageFile.getOriginalFilename();
            File file = new File(uploadDir, fileName);

            // 파일 저장 디렉터리가 없을 경우 생성
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }

            // 파일 저장
            imageFile.transferTo(file);

            // 파일 정보 데이터베이스 저장
            ProductImgVO productImg = new ProductImgVO();
            productImg.setPiId(productId);
            productImg.setPimgName(fileName);
            productImg.setPimgPath(file.getAbsolutePath());
            productImg.setPimgCredat(Timestamp.valueOf(LocalDateTime.now()));

            result += productImgMapper.insertProductImg(productImg);
        }

        return result;
    }
}
