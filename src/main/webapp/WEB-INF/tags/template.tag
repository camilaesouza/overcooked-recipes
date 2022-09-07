<%--
  Created by IntelliJ IDEA.
  User: camilasouza
  Date: 25/08/2022
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="Template principal" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title" %>
<html>
<head>
    <title>${title}</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="assets/resources/scripts/bootstrap.min.js"></script>
    <link href="assets/resources/styles/bootstrap.min.css" rel="stylesheet">
    <link href="assets/resources/styles/my-css.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="icon" href="assets/resources/images/icon.png">

    <link type="text/css" rel="stylesheet" href="assets/resources/styles/jquery-te-1.4.0.css">
    <script type="text/javascript" src="assets/resources/scripts/jquery-te-1.4.0.min.js" charset="utf-8"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-yellow shadow">
        <div class="container">
            <a class="navbar-brand p-0" href="/overcooked-recipes">
                <img src="assets/resources/images/logo.png" alt="logo" style="width:125px">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item mr-1">
                        <a class="nav-link" href="/overcooked-recipes">
                            <i class="bi bi-house-door"></i> Início
                        </a>
                    </li>
                    <li class="nav-item mr-1">
                        <a class="nav-link" href="receitas-listar">
                            <i class="bi bi-book"></i> Receitas
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<main id="content">
    <jsp:doBody></jsp:doBody>
</main>
</body>

<footer class="mt-5">
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <img src="assets/resources/images/footer.png" alt="footer" style="width:125px">
            </div>
            <div class="col-sm" style="margin-top: 50px; text-align: center">
                Sistema desenvolvido por:
                <a style="color: white !important;" href="https://github.com/camilaesouza">cahmomila</a>
            </div>
            <div class="col-sm" style="margin-top: 50px; text-align: center">
                © 2022 Copyright Overcooked recipes
            </div>
        </div>
    </div>
</footer>
</html>
