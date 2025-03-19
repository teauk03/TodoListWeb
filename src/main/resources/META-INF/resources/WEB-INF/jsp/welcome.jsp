<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "common/header.jspf"%>    
<%@ include file = "common/navigation.jspf"%>

    <div class="container">
        <div class="alert alert-success">반갑습니다 ${name} 님</div>
        <hr>
        <div>${name} 님의 <a href="list-todos" class="btn btn-primary">Todo List 관리하러 가기</a></div>
    </div>
    <%@ include file = "common/footer.jspf"%>    
