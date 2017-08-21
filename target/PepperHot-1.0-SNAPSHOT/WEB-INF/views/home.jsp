<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.07.2017
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <spring:url value="/resources/css/indexPage.css" var="startertemplate"/>

    <link href="${startertemplate}" rel="stylesheet"/>

    <title></title>
</head>
<body>
<div id="home-page" style="visibility: visible;">
    <p>Перцы</p>

    <div class="korpus0">
        <input type="radio" name="odin" checked="checked" id="vkl1"/><label for="vkl1">Capsicum annuum</label>
        <input type="radio" name="odin" id="vkl2"/><label for="vkl2">Capsicum baccatum</label>
        <input type="radio" name="odin" id="vkl3"/><label for="vkl3">Capsicum chinense</label>
        <input type="radio" name="odin" id="vkl4"/><label for="vkl4">Capsicum frutescens</label>
        <input type="radio" name="odin" id="vkl5"/><label for="vkl5">Capsicum pubescens</label>


        <div>Capsicum annuum</div>
        <div>Capsicum baccatum</div>
        <div>Capsicum chinense</div>
        <div>Capsicum frutescens</div>
        <div>Capsicum pubescens</div>

    </div>

</div>


</body>
</html>
