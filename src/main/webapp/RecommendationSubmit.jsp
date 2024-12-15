<%--
  Created by IntelliJ IDEA.
  User: nateh
  Date: 11/24/2024
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id = "book" scope = "session"
             class = "org.example.project.Books">
</jsp:useBean>
<html>
  <head>
    <title>Results</title>
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
  <h1>Here are the results from your search</h1>
  <% book.initializeJdbc();
    String author = request.getParameter("authors");
    String genre = request.getParameter("genres");
    book.search(author, genre);
    List<String[]> Books = book.getBooks();

    if (Books.isEmpty()) {
  %>
  <h2>There were no books with this author or genre</h2>
  <%
  } else { // If the list is not empty, display the books
  %>
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
  <%}%>
  </body>
</html>
