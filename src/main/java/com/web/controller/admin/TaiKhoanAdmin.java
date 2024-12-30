package com.web.controller.admin;

import com.web.entity.User;
import com.web.enums.Role;
import com.web.repository.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.sql.Date;
import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class TaiKhoanAdmin {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(value = {"/tai-khoan"}, method = RequestMethod.GET)
    public String danhMucGet(Model model, @RequestParam(value = "role", required = false) Role role) {
        if(role == null){
            model.addAttribute("taiKhoanList", userRepository.findAll());
        }
        else{
            model.addAttribute("taiKhoanList", userRepository.findByRole(role));
        }
        model.addAttribute("roleSelect",role);
        return "admin/taikhoan";
    }

    @PostMapping("/update-role")
    public String updateRole(@RequestParam Long idUser, @RequestParam Role role) {
        User user = userRepository.findById(idUser).get();
        user.setRole(role);
        userRepository.save(user);
        return "redirect:tai-khoan?update-role-success=true";
    }


    @PostMapping("/lockOrUnlockUser")
    public String deleteCategory(RedirectAttributes redirectAttributes, HttpServletRequest request, @RequestParam("id") Long id){
        User user = userRepository.findById(id).get();
        String mess = "";
        if(user.getActived() == true){
            user.setActived(false);
            userRepository.save(user);
            mess = "Khóa tài khoản thành công";
        }
        else{
            user.setActived(true);
            userRepository.save(user);
            mess = "Mở khóa tài khoản thành công";
        }
        redirectAttributes.addFlashAttribute("message", mess);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }

    @RequestMapping(value = {"/adduser"}, method = RequestMethod.GET)
    public String addView(Model model, @RequestParam(required = false) Long id) {
        model.addAttribute("user", new User());
        if(id != null){
            model.addAttribute("user", userRepository.findById(id).get());
        }
        return "admin/addtaikhoan";
    }

    @PostMapping(value = {"/adduser"})
    public String add(@ModelAttribute User user, RedirectAttributes redirectAttributes, HttpServletRequest request) {
        String referer = request.getHeader("Referer");
        if(user.getId() != null){
            Optional<User> check = userRepository.findByEmailAndId(user.getEmail(), user.getId());
            if(check.isPresent()){
                redirectAttributes.addFlashAttribute("error", "Email đã được sử dụng cho tài khoản khác!");
                return "redirect:" + referer;
            }
            User ex = userRepository.findById(user.getId()).get();
            user.setCreatedDate(ex.getCreatedDate());
            user.setActived(ex.getActived());
            user.setPassword(ex.getPassword());
        }
        else{
            Optional<User> check = userRepository.findByEmail(user.getEmail());
            if(check.isPresent()){
                redirectAttributes.addFlashAttribute("error", "Email đã được sử dụng cho tài khoản khác!");
                return "redirect:" + referer;
            }
            user.setCreatedDate(new Date(System.currentTimeMillis()));
            user.setActived(true);
            user.setPassword(passwordEncoder.encode("12345"));
        }
        redirectAttributes.addFlashAttribute("message", "Thêm tài khoản thành công!");
        if(user.getId() != null){
            redirectAttributes.addFlashAttribute("message", "Cập nhật tài khoản thành công!");
        }
        userRepository.save(user);
        return "redirect:/admin/tai-khoan";
    }

    @GetMapping(value = {"/deleteuser"})
    public String deletecategory(@RequestParam Long id, RedirectAttributes redirectAttributes) {
        try {
            userRepository.deleteById(id);
        }catch (Exception e){
            redirectAttributes.addFlashAttribute("error", "Tài khoản đã có liên kết, không thể xóa!");
        }
        redirectAttributes.addFlashAttribute("message", "Xóa tài khoản thành công!");
        return "redirect:/admin/tai-khoan";
    }
}
