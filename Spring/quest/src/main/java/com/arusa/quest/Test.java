package com.arusa.quest;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext; 
  
public class Test {  
public static void main(String[] args) {  
  
    
    ApplicationContext context= new ClassPathXmlApplicationContext("Bean2.xml");
	Question q=(Question)context.getBean("q");
	System.out.println(q);
}  
}