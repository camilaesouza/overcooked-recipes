<%--
  Created by IntelliJ IDEA.
  User: camilasouza
  Date: 25/08/2022
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <title>Error 404</title>

    <style>
        .container {
            width: 100vw;
            height: 100vh;
            background: #cbcbc9;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }
        .box {
            box-shadow: 10px 10px 5px #9a9b98;
            width: 600px;
            height: 400px;
            background: #fff;
        }
        body {
            margin: 0px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="box">
        <img src="assets/resources/images/404-error.png" alt="" width="600">
    </div>
</div>
</body>
</html>
