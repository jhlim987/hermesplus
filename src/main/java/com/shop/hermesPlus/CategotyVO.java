package com.shop.hermesPlus;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CategotyVO {
	private Integer mcId; //MAIN_CATEGORY_ID
	private String mcName; //MAIN_CATEGORY_NAME
	
	private Integer scId; //SUB_CATEGORY_ID
	private Integer fmcId; //MAIN_CATEGORY_ID(FOREIGN KEY)
	private String scName; //SUB_CATEGORY_NAME
	
	private Integer dcId; //DETAIL_CATEGORY_ID
	private Integer fscId; //SUB_CATEGORY_ID(FOREIGN KEY)
	private String dcName; //DETAIL_CATEGORY_NAME
}