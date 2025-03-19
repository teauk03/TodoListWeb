<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <meta charset="UTF-8">
    <head>
        <title>Todo 추가 페이지</title>
        <link rel="stylesheet" href="/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="/webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Todo를 추가 해보세요~!</h1>
            <form:form method="post" modelAttribute="todo">
                <div class="form-group">
                    
                    <fieldset class=" mb-3">
                        <form:label path="description">할일: </form:label>
                        <form:input type="text" path="description" required="required" class="form-control"></form:input>
                        <form:errors path="description" cssClass="text-danger"/>
                    </fieldset>

                    <fieldset class=" mb-3">
                        <form:label path="targetDate">목표 날짜: </form:label>
                        <form:input type="text" path="targetDate" required="required" class="form-control datepicker"></form:input>
                        <form:errors path="targetDate" cssClass="text-danger"/>
                    </fieldset>

                    <form:input type="hidden" path="id"/>
                    <form:input type="hidden" path="done"/>
                </div>
                <input type="submit" class="btn btn-success"/>
            </form:form>
        </div>
        <script src="/webjars/jquery/3.7.1/jquery.min.js"></script>
        <script src="/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
        <script src="/webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#targetDate').datepicker({
                    format: 'yyyy-mm-dd',
                    autoclose: true,
                    todayHighlight: true
                });
            });
        </script>
    </body>
</html>