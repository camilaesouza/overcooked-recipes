package br.edu.utfpr.overcookedrecipes.controller;

import br.edu.utfpr.overcookedrecipes.model.domain.Recipe;
import br.edu.utfpr.overcookedrecipes.model.service.RecipeService;
import br.edu.utfpr.overcookedrecipes.util.Constants;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "homeServlet", value = "")
public class HomeController extends HttpServlet {

    RecipeService recipeService = new RecipeService();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        process(request, response);
        request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
    }

    public void destroy() {
    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Escopo de aplicaçao
        Integer counterApplication = (Integer) getServletContext().getAttribute(Constants.COUNTER_APPLICATION);
        if (counterApplication == null) {
            counterApplication = 0;
        }
        counterApplication++;
        getServletContext().setAttribute(Constants.COUNTER_APPLICATION, counterApplication);

        //Escopo de sessao
        Integer counterSession = (Integer) request.getSession(true).getAttribute(Constants.COUNTER_SESSION);
        if (counterSession == null) {
            counterSession = 0;
        }
        counterSession++;
        request.getSession(true).setAttribute(Constants.COUNTER_SESSION, counterSession);

        List<Recipe> recipes = recipeService.findAll();
        int recipesCount = recipes.size();

        // cookies uma sessão do navegador
        Cookie cookieRecipes = new Cookie("RecipesCount", String.valueOf(recipesCount));
        cookieRecipes.setMaxAge(-1);
        response.addCookie(cookieRecipes);
    }
}