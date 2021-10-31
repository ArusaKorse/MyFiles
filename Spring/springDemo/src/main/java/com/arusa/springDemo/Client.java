package com.arusa.springDemo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Client {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Employee e1=new Employee();
		
		
		ApplicationContext context= new ClassPathXmlApplicationContext("spring.xml");
		e1=(Employee)context.getBean("emp1");
	
	System.out.println(e1);
	
	}
	
	

}
