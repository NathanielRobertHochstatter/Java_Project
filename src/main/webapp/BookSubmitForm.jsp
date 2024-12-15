<%--
  Created by IntelliJ IDEA.
  User: nateh
  Date: 11/23/2024
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Submission</title>
</head>
<body>
<h1>Submit Your Own Books Here</h1>
<form method = "post"  action = "BookSubmitResults.jsp">
  <label for="title">Title:</label>
  <input type="text" id="title" name="title" required>

  <label for="author">Author:</label>
  <input type="text" id="author" name="author" required>

  <label for="genre">Genre:</label>
  <input type="text" id="genre" name="genre" required>

  <label for="description">Description:</label>
  <textarea id="description" name="description" rows="4" required></textarea>

  <button type="submit">Submit</button>
</form>
</body>
</html>
