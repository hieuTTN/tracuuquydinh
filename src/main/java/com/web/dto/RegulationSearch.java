package com.web.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class RegulationSearch {

    private List<Long> categoryIds = new ArrayList<>();

    private List<Long> departmentIds = new ArrayList<>();
}
