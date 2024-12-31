package com.web.repository;

import com.web.entity.RegulationCategory;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface RegulationCategoryRepository extends JpaRepository<RegulationCategory, Long> {

    @Modifying
    @Transactional
    @Query("delete from RegulationCategory p where p.regulation.id = ?1")
    int deleteByRegulation(Long regulationId);
}
