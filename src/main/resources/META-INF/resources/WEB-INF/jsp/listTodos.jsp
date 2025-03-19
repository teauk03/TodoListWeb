<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%@ include file = "common/header.jspf"%>    
        <%@ include file = "common/navigation.jspf"%>

        <div class="container">
            <div>${name}님의 Todo List</div>
            <hr>
            <table class="table">
                <thead>
                    <tr>
                        <!-- <th>id</th> -->
                        <th>해야할 일</th>
                        <th>목표 완수 날짜</th>
                        <th>완료 여부</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <!-- <td>${todo.id}</td> -->
                            <td>${todo.description}</td>
                            <td>${todo.targetDate}</td>
                            <td>${todo.done}</td>
                            <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">삭제</a></td>
                            <td><a href="update-todo?id=${todo.id}" class="btn btn-success">수정</a></td>
                        </tr>
                    </c:forEach>
            </tbody>
            </tabl>
            <a href="add-todo" class="btn btn-success">TodoList 추가하기</a>
        </div>
        
        <%@ include file = "common/footer.jspf"%>