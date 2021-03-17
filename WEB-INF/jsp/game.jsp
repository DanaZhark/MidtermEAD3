<%--
  Created by IntelliJ IDEA.
  com.User: MI
  Date: 15.03.2021
  Time: 5:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ead3.midterm.auth.model.User" %>
<%@ page import="ead3.midterm.auth.service.UserServiceImpl" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <link href="/css/style.css" rel="stylesheet" type="text/css">
    <script src="http://code.jquery.com/jquery-2.2.4.js"
            type="text/javascript"></script>
    <script src="js/app-ajax.js" type="text/javascript"></script>
    <title>Game</title>
    <style type="text/css">
        @import "https://fonts.googleapis.com/css?family=Raleway";

        body {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            background: #333;
            font-family: Raleway;
            text-transform: uppercase;
            font-size: 11px;
        }

        h1 {
            margin: 0;
        }

        #contact {
            -webkit-user-select: none; /* Chrome/Safari */
            -moz-user-select: none; /* Firefox */
            -ms-user-select: none; /* IE10+ */
            margin: 0.2em auto;
            width: 100px;
            height: 30px;
            line-height: 30px;
            background: teal;
            color: white;
            font-weight: 700;
            text-align: center;
            cursor: pointer;
            border: 1px solid white;
        }

        #contact:hover {
            background: #666;
        }

        #contact:active {
            background: #444;
        }

        #contactForm {
            display: none;

            border: 6px solid salmon;
            padding: 2em;
            width: 400px;
            text-align: center;
            background: #fff;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%)

        }

        input, textarea {
            margin: .8em auto;
            font-family: inherit;
            text-transform: inherit;
            font-size: inherit;

            display: block;
            width: 280px;
            padding: .4em;
        }

        textarea {
            height: 80px;
            resize: none;
        }

        .formBtn {
            width: 140px;
            display: inline-block;

            background: teal;
            color: #fff;
            font-weight: 100;
            font-size: 1.2em;
            border: none;
            height: 30px;
        }

    </style>
</head>
<body>

<table>
    <tr style="color: white">
        <th>Username</th>
        <th>Balance</th>
    </tr>
    <%--<tr id="contact">--%>
        <%--<c:forEach var="user"--%>
                   <%--items="${UserServiceImpl.getAllUsers}">--%>
        <%--<td><c:out value="${user.username}"/></td>--%>
        <%--<td><c:out value="${user.balance}"/>--%>
        <%--</c:forEach>--%>
</table>
<div id="contactForm">

    <h1>UserName - - > UserName</h1>
    <small>Money transfer</small>

    <form action="#">
        <input placeholder="0.0" type="number" required/>
        <input class="formBtn" type="submit"/>
        <input class="formBtn" type="reset"/>
    </form>
</div>
<script>
    $(document).ready(function () {
        // contact form animations
        $("#contact").click(function () {
            $("#contactForm").fadeToggle();
        });
        $(document).mouseup(function (e) {
            var container = $("#contactForm");

            if (
                !container.is(e.target) && // if the target of the click isn't the container...
                container.has(e.target).length === 0
            ) {
                // ... nor a descendant of the container
                container.fadeOut();
            }
        });
    });
</script>
</body>
</html>
