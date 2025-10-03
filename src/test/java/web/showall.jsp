<%-- 
    Document   : showall
    Created on : Oct 3, 2025, 12:17:34 PM
    Author     : Alphen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.ex5.Student" %>
<%
    List<Student> students = (List<Student>) request.getAttribute("students");
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>GPA</th>
    </tr>
    <%
        if (students != null) {
            for (Student s : students) {
    %>
    <tr>
        <td><%= s.getStudentId() %></td>
        <td><%= s.getStudentName() %></td>
        <td><%= s.getGpa() %></td>
    </tr>
    <%
            }
        }
    %>
</table>

</f:view>
