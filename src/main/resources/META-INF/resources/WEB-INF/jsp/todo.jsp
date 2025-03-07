<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
    <meta charset="UTF-8">
    <head>
        <title>Todo 추가 페이지</title>
        <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Todo를 추가 해보세요~!</h1>
            <form method="post">
                할일: <input type="text" name="description" />
                <input type="submit" class="btn btn-success"/>
            </form>
        </div>
        <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    </body>
</html>