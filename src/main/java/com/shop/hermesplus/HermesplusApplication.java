package com.shop.hermesplus;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class HermesplusApplication {

	public static void main(String[] args) {
		SpringApplication.run(HermesplusApplication.class, args);
	}

}
