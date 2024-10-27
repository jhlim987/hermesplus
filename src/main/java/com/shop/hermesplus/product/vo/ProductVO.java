package com.shop.hermesplus.product.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {
    private int piId;
    private String piCode;
    private String piName;
    private String piPrice;
    private String piCountryOfOrigin; // 제조국
    private String piStory;
    private int piMainCategoryId;
    private int piSubCategoryId;
    private int piDetailCategoryId;

    // 새로운 필드 추가
    private List<Integer> colorIds;
    private List<Integer> sizeIds;
    private List<Integer> materialIds;
    private List<String> mainInfos;
}