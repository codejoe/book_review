# TABLE 
# =================================================================================================

# Books
@book1 = Book.create name: 'Alice In Wonderland', author: 'James', description: 'Description of the book', date_release: '2013-12-12', number_of_page: 500, number_of_rate: 5, featured: 0, photo_file_name: 'photo.jpg' 
@book2 = Book.create name: 'Tom Sawyer', author: 'Tommy', description: 'Description of the book', date_release: '2013-12-12', number_of_page: 550, number_of_rate: 4, featured: 0, photo_file_name: 'photo.jpg' 
@book3 = Book.create name: 'Huckleberry Finn', author: 'Hucky', description: 'Description of the book', date_release: '2013-12-12', number_of_page: 430, number_of_rate: 3, featured: 0, photo_file_name: 'photo.jpg' 
@book4 = Book.create name: 'Goosebumps', author: 'Allen', description: 'Description of the book', date_release: '2013-12-12', number_of_page: 320, number_of_rate: 3, featured: 0, photo_file_name: 'photo.jpg' 
@book5 = Book.create name: 'Sin City', author: 'Dave', description: 'Description of the book', date_release: '2013-12-12', number_of_page: 600, number_of_rate: 1, featured: 0, photo_file_name: 'photo.jpg' 

# Categories
@category1 = Category.create name: 'Horror'
@category2 = Category.create name: 'Fiction'
@category3 = Category.create name: 'Adventure'
@category4 = Category.create name: 'Drama'
@category5 = Category.create name: 'Romance'

# CategoryBooks
@category_book1 = CategoryBook.create category_id: 2, book_id: 1
@category_book2 = CategoryBook.create category_id: 3, book_id: 2 
@category_book3 = CategoryBook.create category_id: 3, book_id: 3 
@category_book4 = CategoryBook.create category_id: 1, book_id: 4  
@category_book5 = CategoryBook.create category_id: 4, book_id: 5

# Users
@user1 = User.create email: 'user1@mail.com', role: 'admin', password: '12345678', password_confirmation: '12345678'
@user2 = User.create email: 'user2@mail.com', role: 'reviewer', password: '12345678', password_confirmation: '12345678'
@user3 = User.create email: 'user3@mail.com', role: 'reviewer', password: '12345678', password_confirmation: '12345678'
@user4 = User.create email: 'user4@mail.com', role: 'visitor', password: '12345678', password_confirmation: '12345678'
@user5 = User.create email: 'user5@mail.com', role: 'visitor', password: '12345678', password_confirmation: '12345678'

# Reviews
@review1 = Review.create reviewer_name: 'Reviewer Sarah', reviewer_email: 'reviewer1@mail.com', book_id: 1, approval: 1, content: 'This book is awesome'
@review2 = Review.create reviewer_name: 'Reviewer Tony', reviewer_email: 'reviewer2@mail.com', book_id: 1, approval: 1, content: 'This book is awesome'
@review3 = Review.create reviewer_name: 'Reviewer Andre', reviewer_email: 'reviewer3@mail.com', book_id: 1, approval: 1, content: 'This book is awesome'
@review4 = Review.create reviewer_name: 'Reviewer Schurle', reviewer_email: 'reviewer4@mail.com', book_id: 2, approval: 1, content: 'This book is awesome'
@review5 = Review.create reviewer_name: 'Reviewer Dealofou', reviewer_email: 'reviewer5@mail.com', book_id: 2, approval: 1, content: 'This book is awesome'