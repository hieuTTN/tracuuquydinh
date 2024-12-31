package com.web.repository;

import com.web.entity.Regulation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface RegulationRepository extends JpaRepository<Regulation, Long>, JpaSpecificationExecutor<Regulation> {
}
