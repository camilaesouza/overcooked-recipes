package br.edu.utfpr.overcookedrecipes.model.dto;

import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import lombok.Data;
import lombok.NonNull;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
public class CommentDTO {
    @NonNull
    private String text;
    @ManyToOne
    @JoinColumn(name = "recipe_id")
    @NonNull
    private Recipe recipe;
}
