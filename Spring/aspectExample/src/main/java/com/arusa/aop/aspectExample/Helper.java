package com.arusa.aop.aspectExample;
import org.aspectj.lang.JoinPoint;  
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;


@Aspect
public class Helper {
	@Pointcut("execution(*Alien.*(..))")
	public void show() {}
	
	
	@Before("show()")
	public void logg(JoinPoint jp) {
		System.out.println("Run before show");
	}
}
