package ua.com.lohika.qa.bsm.forum;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ua.com.lohika.qa.bsm.forum.entity.Message;
import ua.com.lohika.qa.bsm.forum.entity.Topic;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class ForumController {

	@Autowired
	ForumService forumService;

//	@RequestMapping("/")
//	public String home() {
//		return "redirect:/forum";
//	}

	@RequestMapping(value = "/forum", method = RequestMethod.GET)
	public String showForumMainPage( HttpServletRequest request) {
		List<Topic> topics = forumService.getAllTopics();
//		if(topics.size() != 0)
//			System.out.println("deb (topics.get(0) = " + topics.get(0));
		request.setAttribute("topics", forumService.getAllTopics());
		return "forum";
	}

//	@RequestMapping(value = "/forum/new_topic", method = RequestMethod.GET)
//	public ModelAndView createTopic() {
//		//		model.addAttribute("message", "Hello world!");
//		return new ModelAndView("new_topic", "command", new Topic()) ;
//	}

	@RequestMapping(value = "/new_topic1", method = RequestMethod.GET)
	public ModelAndView createTopic() {
		return new ModelAndView("addTopic", "command", new Topic());
	}

	@RequestMapping(value = "/new_topic1", method = RequestMethod.POST)
//	public String saveNewTopic(@ModelAttribute("topic") Topic topic, ModelMap model) {
	public ModelAndView saveNewTopic(@ModelAttribute("topic") Topic topic, @ModelAttribute("message") Message message) {
//		Message message = new Message("cewcdew", "wwedwed");
		message.setMessageBody("rfrrewf");
		message.setUsername("usr");
		topic.addMessage(message);
		forumService.addTopic(topic);
		List<Topic> topics = forumService.getAllTopics();
		System.out.println("topics length = " + forumService.getAllTopics().size());
		System.out.println(forumService.getAllTopics().get(0).getTitle());
//		ModelAndView model = new ModelAndView("forum");
//		model.addAttribute("topics", topics);
//		return model;
		return new ModelAndView("successAddTopic", "topics", topics);
	}


	@RequestMapping(value = "/topic/{topicId}", method = RequestMethod.GET)
//	@ResponseBody
	public String getTopicById(HttpServletRequest request, @PathVariable String topicId){
		request.setAttribute("topic", forumService.getTopicByTitle(topicId));
		return "topic";
	}


}