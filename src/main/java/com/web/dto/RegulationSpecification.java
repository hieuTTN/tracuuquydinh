package com.web.dto;

import com.web.entity.Regulation;
import com.web.entity.RegulationCategory;
import jakarta.persistence.criteria.*;
import org.springframework.data.jpa.domain.Specification;

import java.util.ArrayList;
import java.util.List;

public class RegulationSpecification implements Specification<Regulation> {

    private List<Long> categoryIds;

    private List<Long> departmentIds;

    public RegulationSpecification(List<Long> categoryIds, List<Long> departmentIds) {
        this.categoryIds = categoryIds;
        this.departmentIds = departmentIds;
    }

    @Override
    public Predicate toPredicate(Root<Regulation> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
        Predicate predicate = cb.conjunction();
        query.distinct(true);
        if (categoryIds != null && !categoryIds.isEmpty()) {
            Join<Regulation, RegulationCategory> regulationCategoryJoin = root.join("regulationCategories", JoinType.INNER);
            Join<RegulationCategory, Regulation> regulationJoin = regulationCategoryJoin.join("regulation", JoinType.INNER);
            predicate = cb.and(predicate, regulationJoin.get("id").in(categoryIds));
        }
        if (departmentIds != null && !departmentIds.isEmpty()) {
            predicate = cb.and(predicate, root.get("department").get("id").in(departmentIds));
        }

//        predicate = cb.and(predicate, cb.notEqual(root.get("deleted"), true));
        return predicate;
    }
}
