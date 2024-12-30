package com.web.controller.admin;

import com.web.entity.Category;
import com.web.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class CategoryController {

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping(value = {"/danhmuc"}, method = RequestMethod.GET)
    public String danhmuc(Model model) {
        model.addAttribute("listcate", categoryRepository.findAll());
        return "admin/danhmuc";
    }

    @PostMapping(value = {"/addcategory"})
    public String addcategory(@RequestParam String name, RedirectAttributes redirectAttributes) {
        Category category = new Category();
        category.setName(name);
        categoryRepository.save(category);
        redirectAttributes.addFlashAttribute("message", "Thêm danh mục thành công!");
        return "redirect:/admin/danhmuc";
    }

    @PostMapping(value = {"/updatecategory"})
    public String updatecategory(@RequestParam String name, @RequestParam Long id, RedirectAttributes redirectAttributes) {
        Category category = categoryRepository.findById(id).get();
        category.setName(name);
        categoryRepository.save(category);
        redirectAttributes.addFlashAttribute("message", "Cập nhật danh mục thành công!");
        return "redirect:/admin/danhmuc";
    }

    @GetMapping(value = {"/deletecategory"})
    public String deletecategory(@RequestParam Long id, RedirectAttributes redirectAttributes) {
        try {
            categoryRepository.deleteById(id);
        }catch (Exception e){
            redirectAttributes.addFlashAttribute("error", "Danh mục đã có liên kết, không thể xóa!");
        }
        redirectAttributes.addFlashAttribute("message", "Xóa danh mục thành công!");
        return "redirect:/admin/danhmuc";
    }
}
