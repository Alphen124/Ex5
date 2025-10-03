<%-- 
    Document   : Form
    Created on : Oct 3, 2025, 12:14:37 PM
    Author     : Alphen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
    <head>
        <title>Add Student</title>
    </head>
    <body>
        <h2>Add Student Information</h2>
            <form action="StudentServlet" method="post">
            <label>Student ID:</label>
            <input type="text" name="studentId" required><br><br>

            <label>Student Name:</label>
            <input type="text" name="studentName" required><br><br>

            <label>GPA:</label>
            <input type="text" name="gpa" required><br><br>

            <input type="submit" value="Submit">
            </form>
    </body>
    </html>
</f:view>
