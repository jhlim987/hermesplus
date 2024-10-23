package com.shop.hermesPlus.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AddressInfoVO {
    private int aiNum;
    private String aiPlaceName;
    private String aiRecipientName;
    private String aiPhone;
    private String aiAddress;
    private int uiNum;
}
