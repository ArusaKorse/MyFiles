package com.arusa.aop.aspectExample;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext c= new ClassPathXmlApplicationContext("Bean.xml");
        Alien a=(Alien)c.getBean("a1");
        a.show();
    	
//    	 ApplicationContext context = new ClassPathXmlApplicationContext("beanspring.xml");  
//         Operation e = (Operation) context.getBean("opBean");  
//         System.out.println("calling msg...");  
//         e.msg();  
//         System.out.println("calling m...");  
//         e.m();  
//         System.out.println("calling k...");  
//         e.k();  
//        
    }
}
