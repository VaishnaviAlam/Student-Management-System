package controller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.entity.Student;
import controller.service.StudentService;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Read Form Data
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String course = request.getParameter("course");
        String address = request.getParameter("address");

        // Create Student Object
        Student student = new Student(
                id,
                name,
                age,
                gender,
                email,
                phone,
                course,
                address);

        // Save Student
        StudentService service = new StudentService();

        int result = service.save(student);

        if (result > 0) {

            response.sendRedirect("display");

        } else {

            response.getWriter().println("<h2>Student Registration Failed</h2>");

        }
    }
}