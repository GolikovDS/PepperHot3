<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 20.07.2017
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="capsicum-panel" style="visibility: hidden">
    <table>
        <tr>
            <td><form:checkbox path="pepper" value="18" label="Все" id="all-capsicum" cssClass="capsicum-check"/></td>
        </tr>
        <tr>
            <td><form:checkbox path="pepper" value="17" label="Capsicum annuum" id="annuumRadio" cssClass="capsicum-check"/></td>
        </tr>
        <tr>
            <td width="30px" height="60px" id="annuumP"></td>
        </tr>
        <tr>
            <td><form:checkbox path="pepper" value="16" label="Capsicum baccatum" id="baccatumRadio" cssClass="capsicum-check"/></td>
        </tr>
        <tr>
            <td width="30px" height="60px" id="baccatumP"></td>
        </tr>
        <tr>
            <td><form:checkbox path="pepper" value="15" label="Capsicum chinense" id="chinenseRadio" cssClass="capsicum-check"/></td>
        </tr>
        <tr>
            <td width="30px" height="60px" id="chinenseP"></td>
        </tr>
        <tr>
            <td><form:checkbox path="pepper" value="14" label="Capsicum frutescens" id="frutescensRadio" cssClass="capsicum-check"/></td>
        </tr>
        <tr>
            <td width="30px" height="60px" id="frutescensP"></td>
        </tr>
        <tr>
            <td><form:checkbox path="pepper" value="13" label="Capsicum pubescens" id="pubescensRadio" cssClass="capsicum-check"/></td>
        </tr>
        <tr>
            <td width="30px" height="60px" id="pubescensP"></td>
        </tr>
    </table>
</div>
</body>
<script type="text/javascript">

    var allCheckCapsicum = document.getElementById("all-capsicum");
    allCheckCapsicum.addEventListener("click", function () {
                var checkBoxCapsicum = document.getElementsByClassName("capsicum-check");
                if (allCheckCapsicum.checked) {
                    for (var i = 0; i < checkBoxCapsicum.length; i++) {
                        checkBoxCapsicum[i].checked = true;
                    }
                } else {
                    for (i = 0; i < checkBoxCapsicum.length; i++) {
                        checkBoxCapsicum[i].checked = false;
                    }
                }
            }
            ,
            false
    );

    allCheckCapsicum.click();
</script>

</html>
