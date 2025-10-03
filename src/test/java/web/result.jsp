<%-- 
    Document   : result
    Created on : Oct 3, 2025, 12:16:00 PM
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
        <title>Result</title>
    </head>
    <body>
        <h2 style="color:green;">Student added successfully!</h2>

        <h3>All Students</h3>
        <jsp:include page="showAll.jsp"/>
    </body>
    </html>
</f:view>
