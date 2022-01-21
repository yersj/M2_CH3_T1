package servlets;

import db.DBManager;
import model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "addStudent", value = "/addStudent")
public class addStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String surname=request.getParameter("surname");
        String birthdate = request.getParameter("birthdate");
        String city=request.getParameter("city");

        Student student=new Student(null,name,surname,birthdate,city);
        DBManager.addStudent(student);
        response.sendRedirect("/main");
    }
}
