package servlets;

import db.DBManager;
import model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "edit", value = "/edit")
public class Edit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("studentId"));
        request.setAttribute("edit",DBManager.getById(id));
        request.getRequestDispatcher("/edit.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("studentId"));
        String name=request.getParameter("name");
        String surname=request.getParameter("surname");
        String birthdate=request.getParameter("birthdate");
        String city=request.getParameter("city");
        Student student=new Student(id,name,surname,birthdate,city);
        DBManager.updateStudent(student);
        response.sendRedirect("/main");
    }
}
