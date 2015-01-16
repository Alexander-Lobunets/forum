package ua.com.lohika.qa.bsm.forum.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lobunets on 02.01.2015.
 */
public class Topic {
    private String title;
    private List<Message> messages = new ArrayList<>();



    public Topic(){
//        messages = new ArrayList<Message>();
//        messages = null;
//        new Message();
    }



    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Message> getMessages() {
        return messages;
    }

    public void addMessage(Message message){
        messages.add(message);
    }

//    public void setMessages(List<Message> messages) {
//        this.messages = messages;
//    }


}
