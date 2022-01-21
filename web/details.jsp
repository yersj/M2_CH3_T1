<%@ page import="model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 21.01.2022
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
       <%
       Student student=(Student) request.getAttribute("detail");

       %>
       <label>NAME: </label>
       <p class="fw-bold dd"><%=student.getName()%></p>
       <br>
       <label>SURNAME: </label>
       <p class="fw-bold dd"><%=student.getSurname()%></p>
       <br>
       <label>BIRTHDATE: </label>
       <p class="fw-bold dd"><%=student.getBirthdate()%></p>
       <br>
       <label>CITY: </label>
       <p class="fw-bold dd"><%=student.getCity()%></p>
       <br>
       <a href="/edit?studentId=<%=student.getId()%>" class="btn btn-primary">EDIT STUDENT</a>








</body>
</html>
