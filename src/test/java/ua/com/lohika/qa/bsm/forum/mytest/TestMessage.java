package ua.com.lohika.qa.bsm.forum.mytest;


import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import ua.com.lohika.qa.bsm.forum.entity.Message;

import java.util.Date;

/**
 * Created by lobunets on 02.01.2015.
 */
public class TestMessage {
    static Message message;
//    @RunWith(Message.class)
    @BeforeClass
    public static void setUp(){
        message = new Message();
    }

    @Test
     public void checkDate(){
//        message.setPostDate();
        System.out.println(message.getPostDate());
        Date date = new Date();
        assertTrue(message.getPostDate().equals(date.toString()));
    }

    @Test
    public void checkDateRegression() throws InterruptedException {
//        message.setPostDate();
        System.out.println(message.getPostDate());
        Thread.sleep(1000);
        Date date = new Date();
//        System.out.println(date);
        assertFalse(message.getPostDate().equals(date.toString()));
    }

//    @Test
//    public void checkTopicCreation(){
//        Forum
//
//    }

}
