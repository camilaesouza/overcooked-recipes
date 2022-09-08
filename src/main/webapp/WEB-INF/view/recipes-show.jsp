<%--
  Created by IntelliJ IDEA.
  User: camilasouza
  Date: 25/08/2022
  Time: 14:31
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
                <h3>Ver receita</h3>
                <span class="text-muted">
                <a class="header-link" href="receitas-listar">Receitas</a> >
                <a class="header-link" href="/overcooked-recipes/receitas-listar?id=${recipe.id}">Ver receita</a>
            </span>
            </div>

            <div class="card m-3 shadow">
                <div class="card-header">
                    Receita
                </div>
                <div class="card-body">
                    <div class="d-flex col-12">
                        <div class="col-8 justify-content-start">
                            <h3>${recipe.title}</h3>
                            <span class="text-muted">${recipe.description}</span>
                        </div>
                        <div class="col-4">
                            <img src="assets/resources/images/card-recepies.jpeg" alt="recipe" class="image-recipe-car">
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-12">
                                ${recipe.prepare}
                        </div>
                    </div>
                </div>
            </div>

            <div class="card m-3 shadow">
                <div class="card-header">
                    Comentários
                </div>
                <div class="card-body">
                    <form action="comentarios" method="POST">
                        <div class="form-group">
                            <label for="addcomment">Comentário</label>
                            <textarea class="form-control" id="addcomment" rows="3" required name="text" maxlength="255"></textarea>
                            <input type="hidden" value="${recipe.id}" name="recipe">

                            <button type="submit" class="btn btn-dark mt-2" style="float: right">Enviar</button>
                        </div>
                    </form>

                    <div class="col-12" style="margin-top: 75px">
                        <c:if test="${not empty comments}">
                        <c:forEach var="comment" items="${comments}">
                            <div class="form-group d-flex mb-3">
                                <i style="font-size: 50px; margin-right: 12px" class="bi bi-person-circle"></i>
                                <label for="comment"></label><textarea class="form-control" id="comment" rows="3" disabled>${comment.text}</textarea>
                            </div>
                        </c:forEach>
                        </c:if>
                    </div>
                </div>
            </div>

            <div class="mt-5">
                <a class="btn btn-warning" href="receitas-listar">Voltar</a>
            </div>
        </div>
    </jsp:body>
</t:template>
