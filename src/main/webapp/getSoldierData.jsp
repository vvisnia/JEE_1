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
                <div class="navbutton"><a href="showAllSoldiers.jsp"><img src="graphics/soldier.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="vehicle.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
        </div>
         <jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
        <jsp:useBean id="soldier" class="armyCRUD.domain.Soldier" scope="session" />

        <div class="contentbox">
            <form action="addSoldier.jsp">
            <table class="operationtable">
        <tr class='tableheader'>
            <td colspan='2'>Dodawanie klienta</td>
        </tr>
        <tr>
            <td>Ranga:</td>
            <td><input type="text" name="rank" value="${Soldier.Rank}" /></td>
        </tr>
        <tr>
            <td>Nazwa:</td>
            <td><input type="text" name="name" value="${Soldier.Name}" /></td>
        </tr>
        <tr>
            <td>Lata służby:</td>
            <td><input type="text" name="yearOfService" value="${Soldier.yearOfService}" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value=" Dodaj żołnierza " align="right"></td>
        </tr>
            </table>
            </form>
        </div>
    </body>
</html>