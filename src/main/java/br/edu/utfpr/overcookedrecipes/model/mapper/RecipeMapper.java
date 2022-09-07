package br.edu.utfpr.overcookedrecipes.model.mapper;

import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import br.edu.utfpr.overcookedrecipes.model.dto.RecipeDTO;

public class RecipeMapper {

    public static Recipe toEntity(RecipeDTO dto){
        Recipe entity = new Recipe(dto.getId(), dto.getTitle(), dto.getDescription(), dto.getPrepare());
        return entity;
    }

    public static RecipeDTO toDTO(Recipe entity){
        RecipeDTO dto = new RecipeDTO(entity.getId(), entity.getTitle(), entity.getDescription(), entity.getPrepare());
        return dto;
    }
}
