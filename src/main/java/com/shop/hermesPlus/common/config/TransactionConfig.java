package com.shop.hermesPlus.common.config;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.springframework.aop.Advisor;
import org.springframework.aop.aspectj.AspectJExpressionPointcut;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.TransactionManager;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.interceptor.NameMatchTransactionAttributeSource;
import org.springframework.transaction.interceptor.RuleBasedTransactionAttribute;
import org.springframework.transaction.interceptor.TransactionAttribute;
import org.springframework.transaction.interceptor.TransactionInterceptor;

import lombok.extern.slf4j.Slf4j;

@Configuration
@Slf4j
public class TransactionConfig {
	@Autowired
	private TransactionManager tm;
	@Bean
	TransactionInterceptor txAdvice() {
		TransactionInterceptor txAdvice = new TransactionInterceptor();
		Properties txAttributes = new Properties();
		
		txAttributes.setProperty("*", "PROPAGATION_REQUIRED,-Exception");
		txAdvice.setTransactionAttributes(txAttributes);
		txAdvice.setTransactionManager(tm);
		return txAdvice;
	}
 
	
	
	@Bean
	Advisor advisor() {
		AspectJExpressionPointcut pointcut = new AspectJExpressionPointcut();
		pointcut.setExpression("execution(* com.com.shop.hermesPlus..*Service.*(..))");
		DefaultPointcutAdvisor advisor = new DefaultPointcutAdvisor(pointcut, txAdvice());
		return advisor;
	}
}
