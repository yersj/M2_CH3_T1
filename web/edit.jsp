<%@ page import="model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 21.01.2022
  Time: 14:27
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
    Student student=(Student) request.getAttribute("edit");


%>
       <div class="container">
           <div class="row">
               <div class="col-lg-8 m-auto">
                   <form action="/edit?studentId=<%=student.getId()%>" method="post">
                       <div class="mb-3">
                           <label for="name" class="form-label">NAME:</label>
                           <input type="text" value="<%=student.getName()%>" name="name" class="form-control" id="name" >
                       </div>

                       <div class="mb-3">
                           <label for="surname" class="form-label">SURNAME:</label>
                           <input type="text" value="<%=student.getSurname()%>" name="surname" class="form-control" id="surname" >
                       </div>

                       <div class="mb-3">
                           <label for="birthdate" class="form-label">BIRTHDATE:</label>
                           <input type="date" value="<%=student.getBirthdate()%>" name="birthdate" class="form-control" id="birthdate" >
                       </div>

                       <div class="mb-3">
                           <label for="city" class="form-label">CITY:</label>
                           <select name="city" id="city">
                               <option value="<%=student.getCity()%>"><%=student.getCity()%></option>
                               <option value="almaty">almaty</option>
                               <option value="astana">astana</option>
                           </select>
                       </div>
                       <button type="submit" class="btn btn-success" data-bs-dismiss="modal">SAVE STUDENT</button>
                       <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2">DELETE STUDENT</button>
                   </form>
               </div>
           </div>
       </div>



<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirm Delete</h5>

            </div>
            <div class="modal-body">
                <p>Are you sure?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                <a href="/delete?studentId=<%=student.getId()%>" type="button" class="btn btn-danger">Yes</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
