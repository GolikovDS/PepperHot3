<!-- обратите внимание на spring тэги -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <spring:url value="/resources/css/indexPage.css" var="startertemplate"/>
    <link href="${startertemplate}" rel="stylesheet"/>
    <title>Перец жгуч</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
    </script>


</head>

<body>
<div id="head-page">
    <div id="left-head" onclick="window.location.reload();">
        <p>Перец жгуч</p>
    </div>
    <div id="center-head">
        <form:form method="post" action="/">
            <div id="selecterVegetable">
                <form:radiobutton path="vegetable" value="pepper" label="Перец" id="pepperRadio"/>
                <form:radiobutton path="vegetable" value="tomato" label="Томат" id="tomatoRadio"/>
            </div>


            <%--http://greenhome.org.ua/kapsikum-dekorativnyj-perec-uxod-i-razmnozhenie/--%>


        </form:form>
    </div>
    <div id="right-head">

    </div>
</div>
<div id="left-panel">
    <jsp:include page="/WEB-INF/views/panel/scovel_panel.jsp"/>
    <jsp:include page="/WEB-INF/views/panel/color_tomat_panel.jsp"/>
</div>


<div id="context">
    <jsp:include page="/WEB-INF/views/home.jsp"/>
    <jsp:include page="/WEB-INF/views/selector_page.jsp"/>
    <jsp:include page="/WEB-INF/views/context_page.jsp"/>

</div>

<div id="right-panel">
    <jsp:include page="/WEB-INF/views/panel/capsicum_panel.jsp"/>
</div>


</body>
<script type="text/javascript">

    var checkboxScovel = document.getElementsByClassName("checkbox-scovel");
    var checkboxScovelValue = ["0"];
    var checkboxCapsicum = document.getElementsByClassName("capsicum-check");


    var listenerFun = function () {
        checkboxScovel = document.getElementsByClassName("checkbox-scovel");
        checkboxScovelValue = ["0"];
        checkboxCapsicum = document.getElementsByClassName("capsicum-check");


        for (var i = 0; i < checkboxScovel.length; i++) {
            if (checkboxScovel[i].checked) {
                checkboxScovelValue.push(checkboxScovel[i].value);
            }
        }

        for(i = 0; i < checkboxCapsicum.length; i++){
            if(checkboxCapsicum[i].checked){
                checkboxScovelValue.push(checkboxCapsicum[i].value)
            }
        }
        ajaxSent();
    };


    function ajaxSent() {
        $.ajax({
            type: "POST",
            url: 'check-scovel',
            data: {numbScovel: checkboxScovelValue},
            success: function (data) {
//                    var xmlDocument = responseXml;
//                    var record = responseXml.getElementById("MIGU");
                $('#selector-panel').html(data);
            }
        });
    }

    document.getElementById("selecterVegetable").addEventListener("click", function () {
        if (document.getElementById("pepperRadio").checked) {
            document.getElementById("capsicum-panel").style.cssText = "visibility: visible;";
            document.getElementById("scovel-panel").style.cssText = "visibility: visible;";
            document.getElementById("color-tomat-panel").style.cssText = "visibility: hidden;";

            document.getElementById("home-page").style.cssText = "visibility: hidden;";
            document.getElementById("selector-panel").style.cssText = "visibility: visible;";
            document.getElementById("context-page").style.cssText = "visibility: visible;";
        } else {
            document.getElementById("capsicum-panel").style.cssText = "visibility: hidden;";
            document.getElementById("scovel-panel").style.cssText = "visibility: hidden;";
            document.getElementById("color-tomat-panel").style.cssText = "visibility: visible;";
        }
    }, false);

    document.getElementById("scovel-panel").addEventListener("click", listenerFun);
    document.getElementById("capsicum-panel").addEventListener("click", listenerFun);

</script>

</html>