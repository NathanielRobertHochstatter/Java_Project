use javabook;

drop table if exists Books;
create table Books (id int auto_increment, 
  title varchar(50), author varchar(32), genre varchar(32), description varchar(200), primary key(id));

INSERT INTO books (id, title, author, genre, description) VALUES

(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'A novel about the serious issues of rape and racial inequality, narrated by a young girl named Scout Finch.'),
(2, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'A story about teenage angst and alienation, narrated by the iconic character Holden Caulfield.'),
(3, 'The Road', 'Cormac McCarthy', 'Fiction', 'A bleak story about a father and son navigating a devastated world, struggling for survival and hope.'),
(4, 'The Alchemist', 'Paulo Coelho', 'Fiction', 'A philosophical tale about a shepherd named Santiago who dreams of finding treasure in Egypt.'),
(5, 'Life of Pi', 'Yann Martel', 'Fiction', 'A fantastical survival story of a boy stranded on a lifeboat with a Bengal tiger after a shipwreck.'),


(6, 'Pride and Prejudice', 'Jane Austen', 'Romance', 'A romantic novel that explores the issues of class, marriage, and morality in early 19th century England.'),
(7, 'The Fault in Our Stars', 'John Green', 'Romance', 'A love story between two teenagers who meet in a cancer support group, exploring themes of life and mortality.'),
(8, 'Outlander', 'Diana Gabaldon', 'Romance', 'A historical romance that involves time travel, centering on Claire Randall, a nurse from World War II.'),
(9, 'Me Before You', 'Jojo Moyes', 'Romance', 'A heartwarming story of an unlikely romance between a caregiver and a man paralyzed from an accident.'),
(10, 'The Notebook', 'Nicholas Sparks', 'Romance', 'A romantic drama that chronicles the lifelong love of a couple from their youth to old age.'),


(11, 'The Hobbit', 'J.R.R. Tolkien', 'Adventure', 'A fantasy adventure following Bilbo Baggins as he embarks on a quest to help a group of dwarves reclaim their treasure.'),
(12, 'Treasure Island', 'Robert Louis Stevenson', 'Adventure', 'A classic tale of piracy and adventure on the high seas, featuring young Jim Hawkins and the infamous Long John Silver.'),
(13, 'Moby-Dick', 'Herman Melville', 'Adventure', 'The narrative of Captain Ahab’s obsessive quest to hunt down the white whale, Moby Dick.'),
(14, 'The Call of the Wild', 'Jack London', 'Adventure', 'The story of a domesticated dog, Buck, who reverts to his wild instincts in the Alaskan wilderness.'),
(15, 'Journey to the Center of the Earth', 'Jules Verne', 'Adventure', 'A science fiction adventure about a daring expedition into the depths of the Earth.'),
    

(16, '1984', 'George Orwell', 'Dystopian', 'A story set in a totalitarian society under constant surveillance, exploring themes of oppression and government control.'),
(17, 'Brave New World', 'Aldous Huxley', 'Dystopian', 'A futuristic novel that critiques consumerism and the loss of individuality in a technologically advanced society.'),
(18, 'Fahrenheit 451', 'Ray Bradbury', 'Dystopian', 'A story set in a future where books are banned and "firemen" burn any that are found.'),
(19, 'The Handmaid\'s Tale', 'Margaret Atwood', 'Dystopian', 'A chilling story about a totalitarian society that subjugates women, based on the themes of gender and power.'),
(20, 'The Giver', 'Lois Lowry', 'Dystopian', 'A tale about a society that has eliminated pain and suffering, exploring the implications of a controlled, utopian world.'),


(21, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'A critique of the American Dream, told through the life of Jay Gatsby and his obsession with Daisy Buchanan.'),
(22, 'Jane Eyre', 'Charlotte Brontë', 'Classic', 'A coming-of-age story about an orphaned girl who overcomes hardship to find love and independence.'),
(23, 'Wuthering Heights', 'Emily Brontë', 'Classic', 'A dark romantic tale of passion and revenge between Heathcliff and Catherine Earnshaw.'),
(24, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Classic', 'A psychological novel that explores morality and redemption through the eyes of a young student, Raskolnikov.'),
(25, 'War and Peace', 'Leo Tolstoy', 'Classic', 'A complex novel that intertwines the lives of several families against the backdrop of the Napoleonic Wars.');

select * from Books;