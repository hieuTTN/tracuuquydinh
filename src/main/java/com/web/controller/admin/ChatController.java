package com.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller()
@RequestMapping("/admin")
public class ChatController {

    @RequestMapping(value = {"/chat"}, method = RequestMethod.GET)
    public String view(Model model) {
        return "admin/chat";
    }
}
