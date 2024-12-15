package org.example.project;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Books {
    private Connection connection;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public void initializeJdbc() throws SQLException, ClassNotFoundException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/javabook",
                    "root", "Nathaniel18!");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public List<String[]> getBooks() throws SQLException {
        List<String[]> Books = new ArrayList<>();
        while (rs.next()) {
            String id = rs.getString("id"); // Assuming column names are 'state' and 'capital'
            String title = rs.getString("title");
            String author = rs.getString("author");
            String genre = rs.getString("genre");
            String description = rs.getString("description");
            Books.add(new String[]{id, title, author, genre, description});
        }
        return Books;
    }

    public void search(String author, String genre) throws SQLException {
        pstmt = connection.prepareStatement("SELECT * FROM Books WHERE author = ? Or genre = ?");
        pstmt.setString(1, author);
        pstmt.setString(2, genre);
        rs = pstmt.executeQuery();
    }

    public void getAllBooks() throws SQLException {
        pstmt = connection.prepareStatement("SELECT * FROM Books");
        rs = pstmt.executeQuery();
    }

    public void addBook(String title, String author, String genre, String description) throws SQLException {
        pstmt = connection.prepareStatement("INSERT INTO Books (title, author, genre, description) VALUES (?, ?, ?, ?);");
        pstmt.setString(1, title);
        pstmt.setString(2, author);
        pstmt.setString(3, genre);
        pstmt.setString(4, description);
        pstmt.executeUpdate();
    }

    public void close() {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
