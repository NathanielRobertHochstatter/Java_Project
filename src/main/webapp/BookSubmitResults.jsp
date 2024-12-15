<%--
  Created by IntelliJ IDEA.
  User: nateh
  Date: 11/23/2024
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id = "book" scope = "session"
             class = "org.example.project.Books">
</jsp:useBean>
<html>
<head>
  <title>Book Catalog</title>
  <style>
    body {
      margin: 20px;
    }
    table {
      width: 80%;
      margin: auto;
      border-collapse: collapse;
    }
    td {
      padding: 12px;
      text-align: left;
      border: 1px solid black;
    }
  </style>
</head>
<body>
<% book.initializeJdbc();
  String title = request.getParameter("title");
  String author = request.getParameter("author");
  String genre = request.getParameter("genre");
  String description = request.getParameter("description");
  book.addBook(title, author, genre, description);
%>
<h1>Book Submitted!</h1>
<h2>Would you like to go back to the hub or view our books?</h2>
<br/>
<a href="AllBooks.jsp">Book Catalog!</a>
<br/>
<a href="index.jsp">Book Hub</a>
</body>
</html>
