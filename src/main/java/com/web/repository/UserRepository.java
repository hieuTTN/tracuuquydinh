package com.web.repository;

import com.web.entity.User;
import com.web.enums.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("select u from User u where u.email = ?1")
    Optional<User> findByEmail(String email);

    @Query("select u from User u where u.email = ?1 and u.id <> ?2")
    Optional<User> findByEmailAndId(String email, Long id);

    @Query("select u from User u where u.role = ?1")
    List<User> findByRole(Role role);

    @Query(value = "select u from User u where u.activationKey = ?1 and u.email = ?2")
    Optional<User> getUserByActivationKeyAndEmail(String key, String email);

    @Query("select count(u.id) from User u where u.role = ?1")
    public Double countAdmin(Role role);

    @Query("select u from User u where u.role = ?2 and (u.fullName like ?1 or u.email like ?1)")
    List<User> findAllAdmin(String search, Role role);

    @Query(value = "SELECT u.*\n" +
            "FROM users u\n" +
            "JOIN chatting c ON (c.sender = u.id OR c.receiver = u.id)\n" +
            "WHERE (?1 IN (c.sender, c.receiver)) AND u.id != ?1 and (u.email like ?2 or u.full_name like ?2)", nativeQuery = true)
    public Set<User> getAllStudentChat(Long myUserId, String param);
}
