package br.edu.utfpr.overcookedrecipes.controller;

import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import br.edu.utfpr.overcookedrecipes.model.service.RecipeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RecipesListController", value = "/receitas-listar")
public class RecipesListController extends HttpServlet {

    RecipeService recipeService = new RecipeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Recipe> recipes = recipeService.findAll();
        request.setAttribute("recipes", recipes);

        String id = request.getParameter("id");
        if (id == null) {
            request.getRequestDispatcher("/WEB-INF/view/recipes.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/receitas-visualizar").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
