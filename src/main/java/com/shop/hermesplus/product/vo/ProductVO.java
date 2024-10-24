package com.shop.hermesplus.product.vo;

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
	private String piCountryOfOrigin; // 제속국
	private String piStory;
	private int piMainCategoryId;
	private int piSubCategoryId;
	private int piDetailCategoryId;
}