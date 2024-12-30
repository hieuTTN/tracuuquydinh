package com.web.utils;

import com.web.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;

@ControllerAdvice
public class GlobalModelAttributes {


    @Autowired
    private UserUtils userUtils;

    @ModelAttribute
    public void addGlobalAttributes(Model model) {

        User user = userUtils.getUserWithAuthority();
        if (user != null){
            model.addAttribute("myuser", user);
        }
    }
}
