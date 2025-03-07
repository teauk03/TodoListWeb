<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
    <meta charset="UTF-8">
    <head>
        <title>Todo List Page</title>
        <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div>${name}님의 Todo List</div>
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>해야할 일</th>
                        <th>목표 완수 날짜</th>
                        <th>완료 여부</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.id}</td>
                            <td>${todo.description}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                        </tr>
                    </c:forEach>
            </tbody>
            </tabl>
            <a href="add-todo" class="btn btn-success">TodoList 추가하기</a>
        </div>
        <script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    </body>
</html>