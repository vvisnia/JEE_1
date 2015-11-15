<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Armia Wściekłych Lisów</title>
    </head>

<body>
    <div class="navbar">
    <div class="navbuttons">
    <div class="navbuttonhome"><a href="index.jsp"><img src="graphics/home.png" class="navbuttonhome"></a></div>
    <div class="navbutton"><a href="unit.jsp"><img src="graphics/unit.png" class="navbutton"></a></div>
    <div class="navbutton"><a href="soldier.jsp"><img src="graphics/soldier.png" class="navbutton"></a></div>
    <div class="navbutton"><a href="vehicle.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
</div>
    <div class="contentbox">
        <jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
        <jsp:useBean id="soldier" class="armyCRUD.domain.Soldier" scope="session" />
        <jsp:setProperty name="soldier" property="*" />

        <%
        storage.add(soldier);
        %>
    <div class="successbox">Pomyślnie dodano żołnierza do bazy.</div>
        <p align="center">
        <a href="showAllSoldiers.jsp">Powrót do listy żołnierzy</a>
        </p>
    </div>
</body>
</html>