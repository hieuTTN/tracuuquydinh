package com.web.api;

import com.web.dto.RegulationDto;
import com.web.dto.RegulationSearch;
import com.web.dto.RegulationSpecification;
import com.web.entity.Category;
import com.web.entity.Regulation;
import com.web.entity.RegulationCategory;
import com.web.entity.User;
import com.web.repository.CategoryRepository;
import com.web.repository.RegulationCategoryRepository;
import com.web.repository.RegulationRepository;
import com.web.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@RestController
@RequestMapping("/api")
@CrossOrigin
public class RegulationApi {

    @Autowired
    private RegulationRepository regulationRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private RegulationCategoryRepository regulationCategoryRepository;

    @Autowired
    private UserUtils userUtils;

    @PostMapping("/admin/create-quydinh")
    public ResponseEntity<?> save(@RequestBody RegulationDto dto){
        Regulation regulation = dto.getRegulation();
        User user = userUtils.getUserWithAuthority();
        regulation.setUser(user);
        regulation.setCreatedDate(LocalDateTime.now());
        if(dto.getRegulation().getId() != null){
            Regulation r = regulationRepository.findById(dto.getRegulation().getId()).get();
            regulation.setCreatedDate(r.getCreatedDate());
            regulation.setUser(r.getUser());
            regulation.setCreatedDate(r.getCreatedDate());
            regulation.setUpdatedDate(LocalDateTime.now());
        }
        Regulation result = regulationRepository.save(regulation);
        regulationCategoryRepository.deleteByRegulation(result.getId());
        for(Long id : dto.getCategoryId()){
            Category category = categoryRepository.findById(id).get();
            RegulationCategory regulationCategory = new RegulationCategory();
            regulationCategory.setRegulation(result);
            regulationCategory.setCategory(category);
            regulationCategoryRepository.save(regulationCategory);
        }
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }

    @GetMapping("/public/find-quydinh-by-id")
    public ResponseEntity<?> findById(@RequestParam Long id){
        Regulation result = regulationRepository.findById(id).get();
        return new ResponseEntity<>(result,HttpStatus.OK);
    }

    @PostMapping("/student/search-full-quydinh")
    public ResponseEntity<?> searchFull(@RequestBody RegulationSearch search, Pageable pageable){
        RegulationSpecification regulationSpecification = new RegulationSpecification(search.getCategoryIds(), search.getDepartmentIds());
        Page<Regulation> result = regulationRepository.findAll(regulationSpecification, pageable);
        return new ResponseEntity<>(result, HttpStatus.CREATED);
    }
}
