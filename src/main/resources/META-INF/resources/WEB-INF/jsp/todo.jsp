<!-- UTF - 8로 인코딩 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


        <!-- 헤더 프래그 먼트 -->
        <%@ include file = "common/header.jspf"%>
        <!-- 네비바 프래그 먼트-->
        <%@ include file = "common/navigation.jspf"%>

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

        <%@ include file = "common/footer.jspf"%>

        <script>
            $(document).ready(function() {
                $('#targetDate').datepicker({
                    format: 'yyyy-mm-dd',
                    autoclose: true,
                    todayHighlight: true
                });
            });
        </script>