<%--
  Created by IntelliJ IDEA.
  User: nateh
  Date: 11/23/2024
  Time: 9:48 PM
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
  book.getAllBooks();
  List<String[]> Books = book.getBooks();
%>
<h1>A complete catalog of our books</h1>
<table>
  <tr>
    <td>Id</td>
    <td>Title</td>
    <td>Author</td>
    <td>Genre</td>
    <td>Description</td>
  </tr>
  <% for (int i = 0; i < Books.size(); i++) {
    String[] info = Books.get(i);%>
  <tr>
    <td><%=info[0]%></td>
    <td><%=info[1]%></td>
    <td><%=info[2]%></td>
    <td><%=info[3]%></td>
    <td><%=info[4]%></td>
  </tr>
  <%}%>
</table>
</body>
</html>
