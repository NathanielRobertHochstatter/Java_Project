package org.example.project;


import java.sql.SQLException;

public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Books books = new Books();
        books.initializeJdbc();
        String title = "Tomb Quest: Book of the Dead";
        String author = "Michael Northrop";
        String genre = "adventure";
        String description = "A fantasy adventure book about a young Alex Sennefer's quest to defeat evil mummies and save his mom.";
        books.addBook(title, author, genre, description);
    }
}
