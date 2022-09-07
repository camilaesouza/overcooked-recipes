package br.edu.utfpr.overcookedrecipes.model.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class RecipeDTO {
    @NonNull
    private Long id;
    @NonNull
    private String title;
    @NonNull
    private String description;
    @NonNull
    private String prepare;
}
