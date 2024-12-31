package com.web.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "studentChat")
@RequestMapping("/student")
public class ChatController {

    @RequestMapping(value = {"/chat"}, method = RequestMethod.GET)
    public String view(Model model) {
        return "student/chat";
    }
}
