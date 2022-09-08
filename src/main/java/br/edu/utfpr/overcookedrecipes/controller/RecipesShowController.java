package br.edu.utfpr.overcookedrecipes.controller;

import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import br.edu.utfpr.overcookedrecipes.model.dto.CommentDTO;
import br.edu.utfpr.overcookedrecipes.model.dto.RecipeDTO;
import br.edu.utfpr.overcookedrecipes.model.mapper.RecipeMapper;
import br.edu.utfpr.overcookedrecipes.model.service.CommentService;
import br.edu.utfpr.overcookedrecipes.model.service.RecipeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RecipesShowController", value = "/receitas-visualizar")
public class RecipesShowController extends HttpServlet {

    RecipeService recipeService = new RecipeService();
    CommentService commentService = new CommentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Recipe recipe = recipeService.getById(Long.parseLong(id));
        RecipeDTO recipeDTO = RecipeMapper.toDTO(recipe);
        List<CommentDTO> comments = commentService.getCommentsByRecipe(Long.parseLong(id));

        //Cookies com tempo de vida
        Cookie cookieRecipeId = new Cookie("lastAccessRecipe", id);
        cookieRecipeId.setMaxAge(60*60);// 1 hora
        response.addCookie(cookieRecipeId);

        request.setAttribute("comments", comments);
        request.setAttribute("recipe", recipeDTO);

        request.getRequestDispatcher("/WEB-INF/view/recipes-show.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
