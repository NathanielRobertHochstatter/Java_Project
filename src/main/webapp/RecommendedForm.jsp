<%--
  Created by IntelliJ IDEA.
  User: nateh
  Date: 11/23/2024
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id = "book" scope = "session"
             class = "org.example.project.Books">
</jsp:useBean>
<html>
<head>
    <title>Book Recommendation</title>
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
<h1>Please select the kinds of books you are interested in and we will try and find something for you!</h1>
<% book.initializeJdbc();
    book.getAllBooks();
    List<String[]> Books = book.getBooks();
%>
<form method = "post"  action = "RecommendationSubmit.jsp">
    <label for="authors">Select an author:</label>
    <select name="authors" id="authors">
        <option value=""></option>
        <%
            Set<String> seenAuthors = new HashSet<>();
            for (String[] info : Books) {
                String author = info[2];
                if (seenAuthors.add(author)) {
        %>
        <option value="<%= author %>"><%= author %></option>
        <%
                }
            }
        %>
    </select>

    <label for="genres">Select a genre:</label>
    <select name="genres" id="genres">
        <option value=""></option>
        <%
            Set<String> seenGenre = new HashSet<>();
            for (String[] info : Books) {
                String genre = info[3];
                if (seenGenre.add(genre)) {
        %>
        <option value="<%= genre %>"><%= genre %></option>
        <%
                }
            }
        %>
    </select>

    <button type="submit">Submit</button>
</form>
</body>
</html>
