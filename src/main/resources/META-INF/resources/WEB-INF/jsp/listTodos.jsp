<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
    <meta charset="UTF-8">
    <head>
        <title>Todo List Page</title>
    </head>
    <body>
        <div>${name}님 입니다.</div>
        <hr>
        <h1>당신의 Todo List</h1>
        <table>
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
        </table>
    </body>
</html>