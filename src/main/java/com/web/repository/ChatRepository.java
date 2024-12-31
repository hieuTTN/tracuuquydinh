package com.web.repository;

import com.web.entity.Chatting;
import com.web.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

public interface ChatRepository extends JpaRepository<Chatting,Long> {

    @Query(value = "select c from Chatting c where (c.sender.id = ?1 and c.receiver.id = ?2) or (c.receiver.id = ?1 and c.sender.id = ?2)")
    public List<Chatting> findByUser(Long idSender, Long idReceiver);

    @Query("select c.sender from Chatting c where c.receiver is null and (c.sender.email like ?1 or c.sender.email like ?1) ")
    public Set<User> getAllUserChat(String param);

    @Query("select c from Chatting c where c.sender.id = ?1 or c.receiver.id = ?1")
    List<Chatting> myChat(Long id);

    @Query(value = "select created_date from chatting where (sender = ?1 and receiver = ?2) or (receiver = ?1 and sender = ?2) order by id desc limit 1 offset  0", nativeQuery = true)
    public Timestamp findLastChatting(Long idSender, Long idReceiver);
}

