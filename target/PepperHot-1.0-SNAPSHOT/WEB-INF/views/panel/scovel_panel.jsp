<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 19.07.2017
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="scovel-panel" style="visibility: hidden">
    <sf:form method="post" action="/check-scovel" modelAttribute="pepper" id="fScovel">
        <table class="table-button">
            <tr>
                <td>
                    <p>Шкала жгучести Сковилла</p>
                </td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="12" label="Все" cssClass="checkbox-scovel" id="all-scovel"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="11" label="Взрывной " cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>100 000...</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="10" label="Вулканный" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>50000—100000</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="9" label="Жаркий" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>30000—50000</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="8" label="Обжигающий" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>15000—30000</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="7" label="Жгучий" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>5000 — 15000</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="6" label="сильный" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>2500—5000</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="5" label="горячий" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>1500—2500</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="4" label="выше среднего"
                                   cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>1000—1500</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="3" label="тёплый" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>500—1000</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="2" label="мягкий" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>100—500</td>
            </tr>
            <tr>
                <td>
                    <form:checkbox path="pepper" value="1" label="Нейтральный" cssClass="checkbox-scovel"/>
                </td>
            </tr>
            <tr>
                <td>0—100</td>
            </tr>
        </table>
    </sf:form>
</div>
</body>
<script type="text/javascript">

    var allCheck = document.getElementById("all-scovel");
    allCheck.addEventListener("click", function () {
                var checkBox = document.getElementsByClassName("checkbox-scovel");
                if (allCheck.checked) {
                    for (var i = 0; i < checkBox.length; i++) {
                        checkBox[i].checked = true;
                    }
                } else {
                    for (i = 0; i < checkBox.length; i++) {
                        checkBox[i].checked = false;
                    }
                }
            }
            ,
            false
    );

    allCheck.click();

</script>
</html>
