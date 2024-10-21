package com.shop.hermesPlus;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class HermesPlusApplication {

	public static void main(String[] args) {
		SpringApplication.run(HermesPlusApplication.class, args);
	}

}
