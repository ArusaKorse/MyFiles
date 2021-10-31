package com.arusa.FirstSpringProgram;

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
        ApplicationContext c= new ClassPathXmlApplicationContext("Bean.xml");
        Student s= (Student)c.getBean("student");
        System.out.print(s);
;    }
}
