package com.mycompany.ex5;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.math.BigDecimal;

public class Ex5 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("studentId");
        String name = request.getParameter("studentName");
        String gpaStr = request.getParameter("gpa");

        Integer id = null;
        BigDecimal gpa = BigDecimal.ZERO;

        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
            
        }

        try {
            gpa = new BigDecimal(gpaStr);
        } catch (Exception e) {
            gpa = BigDecimal.ZERO;
        }

      
        Student s = StudentTable.findStudent(id);

        if (s != null) {
           
            request.setAttribute("error", "Student ID already exists!");
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        } else {
            
            Student newStudent = new Student(id, name, gpa);
            StudentTable.insertStudent(newStudent);
            request.setAttribute("student", newStudent);
            RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
            rd.forward(request, response);
        }
    }
}
