package com.shop.hermesplus.order.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderItemVO {
	
	private int oiNum;
	private String oiId;
	private int ciNum;
	private int piNum;
	private int oiPrice;
	private int oiCount;
	private int oiStatus;
	private String credat;
	private String cretim;
}
