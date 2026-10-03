package controller.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.entity.Student;
import controller.service.StudentService;

@WebServlet("/display")
public class DisplayServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        StudentService service = new StudentService();

        List<Student> studentList = service.fetchAll();

        request.setAttribute("studentList", studentList);

        request.getRequestDispatcher("display.jsp")
               .forward(request, response);
    }

}