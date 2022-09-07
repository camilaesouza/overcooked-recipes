<%--
  Created by IntelliJ IDEA.
  User: camilasouza
  Date: 25/08/2022
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Receitas">
    <jsp:body>
        <div class="container">
            <div class="ml-3 mt-5">
                <h3>Receitas</h3>
                <span class="text-muted">
                <a class="header-link" href="/overcooked-recipes">Início</a> >
                <a class="header-link" href="receitas-listar">Receitas</a>
            </span>
            </div>

            <div class="card m-3 container shadow">
                <div class="d-flex mt-3">
                    <div class="m-15">
                        <a href="receitas" class="btn btn-warning">
                            <i class="fa fa-plus"></i> <i class="bi bi-plus"></i> Criar Receita
                        </a>
                    </div>
                </div>
                <div class="row m-3">
                        <c:if test="${not empty recipes}">
                            <c:forEach var="recipe" items="${recipes}">
                                <div class="card shadow ml-2" style="width: 16rem; margin-right:10px">
                                    <img class="card-img-top" src="assets/resources/images/card-recepies.jpeg" alt="card1">
                                    <div class="card-body">
                                        <h5 class="card-title">${recipe.title}</h5>
                                        <p class="card-text">
                                                ${recipe.description}
                                        </p>
                                    </div>
                                    <div class="card-body">
                                        <button class="btn btn-sm" style="background-color: gray" onclick="showRecipe(`/overcooked-recipes/receitas-listar?id=${recipe.id}`)">
                                            <i class="bi bi-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                </div>
            </div>

            <div class="mt-5">
                <a class="btn btn-warning" href="/overcooked-recipes">Voltar</a>
            </div>
        </div>
    </jsp:body>
</t:template>

<script>
    function showRecipe(url) {
        return $.ajax({
                url: url,
                method: 'get',
                success: function(data) {
                    if (data) {
                        window.location.href = url;
                        console.log("acessou receita");
                    }
                },
                error: function (err) {
                    console.log("erro ao acessar receita");
                }
            });
    }
</script>
