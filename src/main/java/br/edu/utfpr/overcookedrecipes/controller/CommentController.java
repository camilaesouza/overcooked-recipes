package br.edu.utfpr.overcookedrecipes.controller;

import br.edu.utfpr.overcookedrecipes.model.domain.Comment;
import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import br.edu.utfpr.overcookedrecipes.model.dto.CommentDTO;
import br.edu.utfpr.overcookedrecipes.model.dto.RecipeDTO;
import br.edu.utfpr.overcookedrecipes.model.mapper.CommentMapper;
import br.edu.utfpr.overcookedrecipes.model.mapper.RecipeMapper;
import br.edu.utfpr.overcookedrecipes.model.service.CommentService;
import br.edu.utfpr.overcookedrecipes.model.service.RecipeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CommentController", value = "/comentarios")
public class CommentController extends HttpServlet {

    RecipeService recipeService = new RecipeService();
    CommentService commentService = new CommentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text = request.getParameter("text");
        String recipeId = request.getParameter("recipe");

        Recipe recipe = recipeService.getById(Long.parseLong(recipeId));
        Comment comment = new Comment(text, recipe);

        commentService.save(comment);
        RecipeDTO recipeDTO = RecipeMapper.toDTO(recipe);
        CommentDTO commentDTO = CommentMapper.toDTO(comment);

        request.setAttribute("flash.recipe", recipeDTO);
        request.setAttribute("flash.comment", commentDTO);
        response.sendRedirect("/overcooked-recipes/receitas-listar?id=" + recipeId);
    }
}
