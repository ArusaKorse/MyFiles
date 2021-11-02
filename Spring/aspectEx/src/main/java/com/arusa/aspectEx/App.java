package com.arusa.aspectEx;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext context = new ClassPathXmlApplicationContext("Bean.xml");  
        Employee e = (Employee) context.getBean("empbean");  
        System.out.println(e);
        System.out.println(e.getEid());
    }
}
