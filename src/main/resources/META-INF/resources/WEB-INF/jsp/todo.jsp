<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <meta charset="UTF-8">
    <head>
        <title>Todo 추가 페이지</title>
        <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Todo를 추가 해보세요~!</h1>
            <form:form method="post" modelAttribute="todo" action="/add-todo">
                <div class="form-group">
                    <label for="description">할일:</label>
                    <form:input type="text" path="description" required="required" />
                    <form:errors path="description" cssClass="text-danger"/>
                    <form:input type="hidden" path="id"/>
                    <form:input type="hidden" path="done"/>
                </div>
                <input type="submit" class="btn btn-success"/>
            </form:form>
        </div>
        <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    </body>
</html>