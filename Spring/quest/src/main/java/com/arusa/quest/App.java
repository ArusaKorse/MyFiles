package com.arusa.quest;

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
    	ApplicationContext context= new ClassPathXmlApplicationContext("Bean.xml");
    	Question q=(Question)context.getBean("q");
    	q.displayInfo();  
    }
}
