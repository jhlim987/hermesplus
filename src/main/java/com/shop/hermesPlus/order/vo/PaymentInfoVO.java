package com.shop.hermesPlus.order.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PaymentInfoVO {

	private int paiNum;
	private int orNum;
	private int paiStatus;
	private String paiName;
	private int paiAmount;
	private String paiMethod;
}
