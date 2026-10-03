package controller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.service.StudentService;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Read Student ID
        int id = Integer.parseInt(request.getParameter("id"));

        // Delete Student
        StudentService service = new StudentService();

        int result = service.delete(id);

        if (result > 0) {

            // Redirect to Display Page
            response.sendRedirect("display");

        } else {

            response.getWriter().println("<h2>Student Deletion Failed</h2>");

        }
    }
}