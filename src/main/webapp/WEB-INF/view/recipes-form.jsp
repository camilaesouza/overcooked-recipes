<%--
  Created by IntelliJ IDEA.
  User: camilasouza
  Date: 27/08/2022
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Inicio">
  <jsp:body>
    <div class="container">
      <div class="ml-3 mt-5">
        <h3>Criar receita</h3>
        <span class="text-muted">
                <a class="header-link" href="receitas-listar">Receitas</a> >
                <a class="header-link" href="receitas">Criar receita</a>
            </span>
      </div>

      <div class="card m-3">
        <div class="card-header">
          Criar
        </div>
        <div class="card-body">
          <div class="mb-4">
            <button class="btn btn-sm btn-warning float-end" id="completeRecipeForm" type="button">Preencha com um exemplo</button>
          </div>

          <form action="receitas" method="post">
            <div class="form-row">
              <div class="form-group col-md-12">
                <label for="title">Título</label>
                <input maxlength="100" type="text" class="form-control" id="title" placeholder="Título" name="title">
              </div>
              <div class="form-group col-md-12 mt-3">
                <label for="description">Descrição</label>
                <input maxlength="255" type="text" class="form-control" id="description" placeholder="Descrição" name="description">
              </div>

              <div class="form-group col-md-12 mt-3">
                <label for="prepare">Preparo: </label>
                <textarea id="prepare" class="jqte-test" name="prepare"></textarea>
              </div>
            </div>

            <div class="row mt-2">
              <div class="col-12">
                <img src="assets/resources/images/criar-image.jpg" alt="profile" style="width: 150px; float: right">
              </div>
            </div>

            <button class="btn btn-dark float-left" type="submit">Criar</button>
          </form>
        </div>
      </div>

      <div class="mt-5">
        <a class="btn btn-warning" href="receitas-listar">Voltar</a>
      </div>
    </div>
  </jsp:body>
</t:template>

<link type="text/css" rel="stylesheet" href="assets/resources/styles/jquery-te-1.4.0.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="assets/resources/scripts/jquery-te-1.4.0.min.js" charset="utf-8"></script>

<script>
  $('.jqte-test').jqte();

  var jqteStatus = true;
  $(".status").click(function () {
    jqteStatus = jqteStatus ? false : true;
    $('.jqte-test').jqte({"status": jqteStatus})
  });

  $("#completeRecipeForm").click(function(){
    $.ajax({
      url: 'http://localhost:8080/overcooked-recipes/assets/resources/scripts/recipe.json',
      method: 'get',
      success: function(data) {
        if (data) {
          $("#title").val(data.title);
          $("#description").val(data.description);
          $(".jqte_editor").html(data.prepare);
        }
      }
    });
  });
</script>