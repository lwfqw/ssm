package cn.luoweifei.test;

import cn.luoweifei.service.UserServer;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;

public class UserTest {
    private String cof="classpath:applicationContext.xml";
    @Test
    public void selectOne(){
        ApplicationContext context=new ClassPathXmlApplicationContext(cof);
        UserServer userServer= (UserServer) context.getBean("userServer",UserServer.class);
        System.out.println(userServer.selectByTel("13698436311"));
    }
}
