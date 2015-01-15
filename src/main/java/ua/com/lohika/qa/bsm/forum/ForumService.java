package ua.com.lohika.qa.bsm.forum;


import org.springframework.stereotype.Service;
import ua.com.lohika.qa.bsm.forum.entity.Topic;
import ua.com.lohika.qa.bsm.forum.entity.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lobunets on 03.01.2015.
 */

@Service
public class ForumService {


    Map<String, Topic> topicsMap = new HashMap<>();
    List<User> users;

//    void addTopic(String title, Message message){
//        Topic topic = new Topic();
//        topic.setTitle(title);
//        topic.addMessage(message);
//
//    }

    ForumService(){}


    void addTopic(Topic topic){
        topicsMap.put(topic.getTitle(), topic);
    }

    public List<Topic> getAllTopics() {
        System.out.println(topicsMap.values());
        return new ArrayList(topicsMap.values());
    }

    public Map getTopicMap(){
        return topicsMap;
    }


    public Topic getTopicByTitle(String topicTitle) {
        return topicsMap.get(topicTitle);
    }

}
