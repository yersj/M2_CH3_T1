<%@ page import="model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 20.01.2022
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-6 m-auto">
            <form action="/addStudent" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">NAME:</label>
                    <input type="text" name="name" class="form-control" id="name" >
                </div>

                <div class="mb-3">
                    <label for="surname" class="form-label">SURNAME:</label>
                    <input type="text" name="surname" class="form-control" id="surname" >
                </div>

                <div class="mb-3">
                    <label for="birthdate" class="form-label">BIRTHDATE:</label>
                    <input type="date" name="birthdate" class="form-control" id="birthdate" >
                </div>

                <div class="mb-3">
                    <label for="city" class="form-label">CITY:</label>
                    <select name="city" id="city">
                        <option value="almaty">almaty</option>
                        <option value="astana">astana</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-success">ADD STUDENT</button>
            </form>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Surname</th>
                    <th scope="col">Birthdate</th>
                    <th scope="col">City</th>
                    <th scope="col">DETAILS</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <%
                    List<Student> list=(List<Student>) request.getAttribute("students");
                    for(Student student:list){


                    %>

                    <td><%=student.getId()%></td>
                    <td><%=student.getName()%></td>
                    <td><%=student.getSurname()%></td>
                    <td><%=student.getBirthdate()%></td>
                    <td><%=student.getCity()%></td>
                    <td><a href="/details?studentId=<%=student.getId()%>" class="btn btn-info">DETAILS</a></td>

                </tr>
                  <%
                      }
                  %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
