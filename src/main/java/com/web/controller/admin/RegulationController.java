package com.web.controller.admin;


import com.web.entity.Regulation;
import com.web.repository.CategoryRepository;
import com.web.repository.DepartmentRepository;
import com.web.repository.RegulationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin")
public class RegulationController {

    @Autowired
    private RegulationRepository regulationRepository;

    @Autowired
    private DepartmentRepository departmentRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping(value = {"/quydinh"}, method = RequestMethod.GET)
    public String danhmuc(Model model) {
        model.addAttribute("quyDinhList", regulationRepository.findAll());
        return "admin/quydinh";
    }

    @RequestMapping(value = {"/addquydinh"}, method = RequestMethod.GET)
    public String addView(Model model, @RequestParam(required = false) Long id) {
        if(id != null){
            Regulation regulation = regulationRepository.findById(id).get();
            model.addAttribute("quydinh", regulation);
        }
        else{
            model.addAttribute("quydinh", new Regulation());
        }
        model.addAttribute("khoa", departmentRepository.findAll());
        model.addAttribute("danhmuc", categoryRepository.findAll());
        return "admin/addquydinh";
    }

    @GetMapping(value = {"/deletequydinh"})
    public String deletecategory(@RequestParam Long id, RedirectAttributes redirectAttributes) {
        try {
            regulationRepository.deleteById(id);
        }catch (Exception e){
            redirectAttributes.addFlashAttribute("error", "Quy định đã có liên kết, không thể xóa!");
        }
        redirectAttributes.addFlashAttribute("message", "Xóa quy định thành công!");
        return "redirect:/admin/quydinh";
    }
}
