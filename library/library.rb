#library.rb

# Model a Library as a class.
#
# * Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
#
#
class Library

  attr_reader :books_array

  def initialize(books_array)
    @books_array = books_array
  end

  # * Create a method that lists all the books and their corresponding details.

  def book_list
    for book in @books_array
      puts "Title: #{book[:title]}"
      puts "Borrower: #{book[:rental_details][:student_name]}"
      puts "Return due date: #{book[:rental_details][:date]}"
    end
  end

  # Create a method that takes in a book title and returns all of the information about that book.

  def book_info(title_string)
    for book in @books_array
      return book if book[:title] == title_string
    end
  end

  # Create a method that takes in a book title and returns only the rental details for that book.

  def book_rental(title_string)
    book = book_info(title_string)
    return book[:rental_details]
  end

  # * Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)

  



end







# end library.rb
