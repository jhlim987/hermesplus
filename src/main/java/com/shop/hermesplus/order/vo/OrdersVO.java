package com.shop.hermesplus.order.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrdersVO {

	private int orNum;
	private String orId;
	private int uiNum;
	private int ciNum;
	private String orItem;
	private int orItemCount;
	private int orTotalAmount;
	private boolean isPaid;
	private boolean isDeliveried;
	private boolean isCancled;
	private boolean isExchanged;
	private boolean isReturned;
	private boolean isRefunded;
}
