package com.web.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "regulation")
@Getter
@Setter
public class Regulation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    private String name;

    private String content;

    private String image;

    private LocalDateTime createdDate;

    private LocalDateTime updatedDate;

    private String linkFile;

    @ManyToOne
    private User user;

    @ManyToOne
    private Department department;

    @OneToMany(mappedBy = "regulation", cascade = CascadeType.REMOVE)
    private List<RegulationCategory> regulationCategories = new ArrayList<>();
}
