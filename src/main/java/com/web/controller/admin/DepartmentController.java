package com.web.controller.admin;

import com.web.entity.Category;
import com.web.entity.Department;
import com.web.repository.CategoryRepository;
import com.web.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class DepartmentController {

    @Autowired
    private DepartmentRepository departmentRepository;

    @RequestMapping(value = {"/khoa"}, method = RequestMethod.GET)
    public String view(Model model) {
        model.addAttribute("listkhoa", departmentRepository.findAll());
        return "admin/khoa";
    }

    @PostMapping(value = {"/addkhoa"})
    public String addcategory(@RequestParam String name, RedirectAttributes redirectAttributes) {
        Department department = new Department();
        department.setName(name);
        departmentRepository.save(department);
        redirectAttributes.addFlashAttribute("message", "Thêm khoa thành công!");
        return "redirect:/admin/khoa";
    }

    @PostMapping(value = {"/updatekhoa"})
    public String updatecategory(@RequestParam String name, @RequestParam Long id, RedirectAttributes redirectAttributes) {
        Department department = departmentRepository.findById(id).get();
        department.setName(name);
        departmentRepository.save(department);
        redirectAttributes.addFlashAttribute("message", "Cập nhật khoa thành công!");
        return "redirect:/admin/khoa";
    }

    @GetMapping(value = {"/deletekhoa"})
    public String deletecategory(@RequestParam Long id, RedirectAttributes redirectAttributes) {
        try {
            departmentRepository.deleteById(id);
        }catch (Exception e){
            redirectAttributes.addFlashAttribute("error", "Khoa đã có liên kết, không thể xóa!");
        }
        redirectAttributes.addFlashAttribute("message", "Xóa khoa thành công!");
        return "redirect:/admin/khoa";
    }
}
