package br.edu.utfpr.overcookedrecipes.model.mapper;

import br.edu.utfpr.overcookedrecipes.model.domain.Comment;
import br.edu.utfpr.overcookedrecipes.model.dto.CommentDTO;

public class CommentMapper {

    public static Comment toEntity(CommentDTO dto){
        Comment entity = new Comment(dto.getText(), dto.getRecipe());
        return entity;
    }

    public static CommentDTO toDTO(Comment entity){
        CommentDTO dto = new CommentDTO(entity.getText(), entity.getRecipe());
        return dto;
    }
}
