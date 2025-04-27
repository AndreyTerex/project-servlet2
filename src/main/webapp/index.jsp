<%@ page import="com.tictactoe.Sign" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tic-Tac-Toe</title>
    <link href="static/main.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="<c:url value="/static/jquery-3.6.0.min.js"/>"></script>
</head>
<body>
<h1>Tic-Tac-Toe</h1>
<div class="board">
    <div class="cell" data-index="0" onclick="window.location = '/logic?click=0'">
        <c:out value="${data.get(0).getSign()}" />
    </div>
    <div class="cell" data-index="1" onclick="window.location = '/logic?click=1'">
        <c:out value="${data.get(1).getSign()}" />
    </div>
    <div class="cell" data-index="2" onclick="window.location = '/logic?click=2'">
        <c:out value="${data.get(2).getSign()}" />
    </div>
    <div class="cell" data-index="3" onclick="window.location = '/logic?click=3'">
        <c:out value="${data.get(3).getSign()}" />
    </div>
    <div class="cell" data-index="4" onclick="window.location = '/logic?click=4'">
        <c:out value="${data.get(4).getSign()}" />
    </div>
    <div class="cell" data-index="5" onclick="window.location = '/logic?click=5'">
        <c:out value="${data.get(5).getSign()}" />
    </div>
    <div class="cell" data-index="6" onclick="window.location = '/logic?click=6'">
        <c:out value="${data.get(6).getSign()}" />
    </div>
    <div class="cell" data-index="7" onclick="window.location = '/logic?click=7'">
        <c:out value="${data.get(7).getSign()}" />
    </div>
    <div class="cell" data-index="8" onclick="window.location = '/logic?click=8'">
        <c:out value="${data.get(8).getSign()}" />
    </div>
</div>
</div>
    <hr>
    <c:set var="CROSSES" value="<%=Sign.CROSS%>"/>
    <c:set var="NOUGHTS" value="<%=Sign.NOUGHT%>"/>

    <c:if test="${winner == CROSSES}">
        <h1>CROSSES WIN!</h1>
        <button onclick="restart()">Start again</button>
    </c:if>
    <c:if test="${winner == NOUGHTS}">
        <h1>NOUGHTS WIN!</h1>
        <button onclick="restart()">Start again</button>
    </c:if>
    <c:if test="${draw}">
        <h1>IT'S A DRAW</h1>
        <br>
        <button onclick="restart()">Start again</button>
    </c:if>
</div>
<script>
    function restart() {
        $.ajax({
            url: '/restart',
            type: 'POST',
            contentType: 'application/json;charset=UTF-8',
            async: false,
            success: function () {
                location.reload();
            }
        });
    }
</script>
</body>
</html>