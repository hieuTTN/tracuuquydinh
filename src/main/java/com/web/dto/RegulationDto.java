package com.web.dto;

import com.web.entity.Regulation;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class RegulationDto {

    private Regulation regulation;

    private List<Long> categoryId = new ArrayList<>();
}
