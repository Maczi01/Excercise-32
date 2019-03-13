<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12.03.2019
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Wyliczanie BMI</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type="text/css">
      html {
        background: url("https://www.virtualtelescope.eu/wordpress/wp-content/uploads/2014/06/BarnardStar_1991_2014.gif") no-repeat center center fixed;
        background-size: cover;
      }
      .lefting {
        margin: 100px;
      }
      .notfull {
        margin-right: 1000px;
      }

</style>
  </head>
  <body>
  <div class="lefting">
<form action="/page/bmi" method="get">
  <div class="text-center"><h1>Wylicz swoje BMI !</h1></div>
<div class=form-group">
  Podaj swoją wagę: <input type="number" name="waga">
</div>
  <div>
  Podaj swój wzrost: <input type="number" name="wzrost">
  </div>
  <div class="notfull">
  Podaj swoją płeć: <select class="form-control" name="plec">
  <option>Facet</option>
  <option>Kobieta</option>
</select>
  <button type="submit" class="btn btn-primary" name="www">Sprawdź!</button>
  </div>
</form>


  <br/>
  <form action="/page/nothungry" method="get">
    <button type="submit" class="btn btn-primary">Nie interesuje mnie to</button>

</form>
  </div>
  </body>
</html>
