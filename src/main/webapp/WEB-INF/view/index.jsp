<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Inicio">
    <jsp:body>
        <div class="container">
            <div class="row p-5">
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="assets/resources/images/card1.png" alt="card1" style="width:60%">
                        <div class="card-body">
                            <h5 class="card-title">Conheça receitas</h5>
                            <p class="card-text">
                                No overcooked receitas, temos variadades de receitas para você inovar na sua cozinha!
                            </p>
                        </div>
                        <div class="card-body">
                            <a href="receitas-listar" class="card-link">Veja aqui</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="assets/resources/images/card2.png" alt="card1" style="width:53%">
                        <div class="card-body">
                            <h5 class="card-title">Cadastre suas receitas</h5>
                            <p class="card-text">
                                Você pode contribuir com nossa comunidade adicionando suas próprias receitas, venha fazer parte
                            </p>
                        </div>
                        <div class="card-body">
                            <a href="receitas" class="card-link">Cadastre aqui</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="assets/resources/images/card3.png" alt="card1" style="width:60%">
                        <div class="card-body">
                            <h5 class="card-title">Variedades culturais</h5>
                            <p class="card-text">
                                Em nossa comunidade temos vários tipos de receitas, para abranger todo o mundo, não perca!
                            </p>
                        </div>
                        <div class="card-body">
                            <a href="receitas-listar" class="card-link">Veja aqui</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr>

        <div class="container">
            <div class="row p-5">
                <div class="col-md-7">
                    <h2>
                        Inove em sua cozinha -
                        <span class="text-muted">Venha para o nossa comunidade</span>
                    </h2>
                    <p>Com a ajuda das pessoas, podemos aumentar nossa variedade de receitas e sermos cada dia melhor, seja um chef overcooked e ajude!</p>
                </div>
                <div class="col-md-5">
                    <img src="assets/resources/images/page1.jpg" alt="new-recipe" style="width:90%">
                </div>
            </div>
        </div>

        <hr>

        <div class="container">
            <div class="row p-5">
                <div class="col-md-5">
                    <img src="assets/resources/images/page2.jpg" alt="new-recipe" style="width:90%">
                </div>
                <div class="col-md-7">
                    <h2>
                        Seu jantar especial -
                        <span class="text-muted">Temos um mundo da cozinha esperando por você</span>
                    </h2>
                    <p>
                        Queremos ajudar ao máximo os chefs overcooked, seja pra impressionar sua família ou aquela pessoa especial,
                        aqui temos várias delicioas receitas para você arrasar na cozinha!
                    </p>
                </div>
            </div>
        </div>

        <hr>

        <div class="container">
            <button class="btn btn-warning" id="showCounters" type="button">Mostrar dados de acesso ao sistema</button>
            <button class="btn btn-warning" id="hideCounters" type="button" style="display: none">Esconder dados de acesso ao sistema</button>
            <div id="counters" style="display: none">
                <p class="mt-2">
                        <%--    Escopo aplicação--%>
                    Contador global: ${counterApplication}
                    <input type="hidden" id="counterApplication" name="counterApplication" value="${counterApplication}">
                </p>
                <p>
                        <%--     Escopo de sessão--%>
                    Contador Sessão: ${counterSession}
                    <input type="hidden" id="counterSession" name="counterSession" value="${counterSession}">
                </p>
            </div>
        </div>
    </jsp:body>
</t:template>

<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script>
    window.onload = function (){
        let counterApplication = $("#counterApplication").val();
        let counterSession = $("#counterSession").val();
        localStorage.setItem("counterApplication", counterApplication);
        localStorage.setItem("counterSession", counterSession);

        $("#showCounters").click(function(){
            $.ajax({
                url: 'http://localhost:8080/overcooked-recipes',
                method: 'get',
                success: function() {
                    $("#counters").show();
                    $("#hideCounters").show();
                    $("#showCounters").hide();
                }
            });
        });

        $("#hideCounters").click(function(){
            $.ajax({
                url: 'http://localhost:8080/overcooked-recipes',
                method: 'get',
                success: function() {
                    $("#counters").hide();
                    $("#hideCounters").hide();
                    $("#showCounters").show();
                }
            });
        });
    }
</script>