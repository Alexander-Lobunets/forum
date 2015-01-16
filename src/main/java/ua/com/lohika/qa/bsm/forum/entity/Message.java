package ua.com.lohika.qa.bsm.forum.entity;

import java.util.Date;

/**
 * Created by lobunets on 02.01.2015.
 */
public class Message {
    private String messageTitle;
    private String messageBody;
    private String username;
    private String postDate;



    public Message(){
        this.postDate = new Date().toString();
    }


    public Message(String messageTitle, String messageBody, String username){
        this.messageTitle = messageTitle;
        this.postDate = new Date().toString();
        this.messageBody = messageBody;
        this.username = username;

    }

    public String getMessageBody() {
        return messageBody;
    }

    public void setMessageBody(String messageBody) {
        this.messageBody = messageBody;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPostDate() {
        return postDate;
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle;
    }

//    public String setPostDate() {
//        Date date = new Date();
//        postDate = date.toString();
//        return
//    }
}
