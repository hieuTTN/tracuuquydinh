package com.web.api;

import com.web.dto.ChatDto;
import com.web.entity.Chatting;
import com.web.entity.User;
import com.web.enums.Role;
import com.web.repository.ChatRepository;
import com.web.repository.UserRepository;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.*;

@RestController
@RequestMapping("/api/chat")
@CrossOrigin
public class ChatApi {

    @Autowired
    private ChatRepository chatRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserUtils userUtils;

    @GetMapping("/user/my-chat")
    public ResponseEntity<?> myChat(){
        List<Chatting> result = chatRepository.myChat(userUtils.getUserWithAuthority().getId());
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/student/all-admin")
    public ResponseEntity<?> allAdmin(@RequestParam(required = false) String search){
        if(search == null){
            search = "";
        }
        search = "%"+search+"%";
        User user = userUtils.getUserWithAuthority();
        List<User> result = userRepository.findAllAdmin(search, Role.ROLE_ADMIN);
        for(User u : result){
            Timestamp cr = chatRepository.findLastChatting(user.getId(),u.getId());
            u.setLastChatTime(cr);
        }
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/admin/all-student-chat")
    public ResponseEntity<?> allStudent(@RequestParam(required = false) String search){
        if(search == null){
            search = "";
        }
        search = "%"+search+"%";
        User user = userUtils.getUserWithAuthority();
        Set<User> result = userRepository.getAllStudentChat(userUtils.getUserWithAuthority().getId(), search);
        for(User u : result){
            Timestamp cr = chatRepository.findLastChatting(user.getId(),u.getId());
            u.setLastChatTime(cr);
        }
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/admin/getListChat")
    public List<Chatting> getListChat(@RequestParam("idreciver") Long idreciver){
        return chatRepository.findByUser(userUtils.getUserWithAuthority().getId(), idreciver);
    }

}
