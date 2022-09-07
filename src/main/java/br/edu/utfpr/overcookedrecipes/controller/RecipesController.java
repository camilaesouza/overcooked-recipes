package br.edu.utfpr.overcookedrecipes.controller;

import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import br.edu.utfpr.overcookedrecipes.model.dto.RecipeDTO;
import br.edu.utfpr.overcookedrecipes.model.mapper.RecipeMapper;
import br.edu.utfpr.overcookedrecipes.model.service.RecipeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RecipesController", value = "/receitas")
public class RecipesController extends HttpServlet {
    RecipeService recipeService = new RecipeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/recipes-form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String prepare = request.getParameter("prepare");

        Recipe recipe = new Recipe(title, description, prepare);
        recipeService.save(recipe);

        RecipeDTO recipeDTO = RecipeMapper.toDTO(recipe);
        request.setAttribute("flash.recipe", recipeDTO);

        response.sendRedirect("receitas-listar");
    }
}
