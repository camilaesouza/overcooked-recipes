package br.edu.utfpr.overcookedrecipes.model.service;

import br.edu.utfpr.overcookedrecipes.model.dao.RecipeDAO;
import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;

public class RecipeService extends AbstractService<Long, Recipe>{

    public RecipeService() {
        dao = new RecipeDAO();
    }
}
