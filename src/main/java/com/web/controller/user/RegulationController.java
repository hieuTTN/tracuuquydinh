package com.web.controller.user;


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

@Controller(value = "studentRegulation")
@RequestMapping("/student")
public class RegulationController {

    @Autowired
    private RegulationRepository regulationRepository;

    @Autowired
    private DepartmentRepository departmentRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping(value = {"/quydinh"}, method = RequestMethod.GET)
    public String view(Model model) {
        model.addAttribute("quyDinhList", regulationRepository.findAll());
        model.addAttribute("categoryList", categoryRepository.findAll());
        model.addAttribute("phongbanList", departmentRepository.findAll());
        return "student/quydinh";
    }

}
