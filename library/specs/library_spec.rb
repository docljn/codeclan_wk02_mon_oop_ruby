# library_spec.rb
require "minitest/autorun"
require "minitest/rg"
require_relative "../library"


class TestLibrary < Minitest::Test

  def setup
    @books_array = [{
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/17"
      }
    },
    {
      title: "lord_of_the_flies",
      rental_details: {
       student_name: "Joe",
       date: "11/12/17"
      }
    },
    {
      title: "lord_of_the_dance",
      rental_details: {
       student_name: "Jack",
       date: "21/12/17"
      }
    }]
  end

  # * Create a method that lists all the books and their corresponding details.  CANNOT TEST THIS?
  def test_book_list
    @library = Library.new(@books_array)
    books = @library.book_list
  end


  # * Create a method that takes in a book title and returns all of the information about that book.
  def test_book_info

    @library = Library.new(@books_array)

    book_details = @library.book_info("lord_of_the_dance")


    expected = {
      title: "lord_of_the_dance",
      rental_details: {
       student_name: "Jack",
       date: "21/12/17"
      }
    }

    assert_equal(expected, book_details)

  end


  # * Create a method that takes in a book title and returns only the rental details for that book.

  def test_book_rental_details
    @library = Library.new(@books_array)
    book_rental = @library.book_rental("lord_of_the_flies")
    expected = {
     student_name: "Joe",
     date: "11/12/17"
    }

    assert_equal(expected, book_rental)
  end


  # * Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)

  def test_add_book
    @library = Library.new(@books_array)
    new_book = {
      title: "lord_of_the_dance",
      rental_details: {
       student_name: "",
       date: ""
      }
    }

    @library.add_book(new_book_title)

    assert_equal(true, @library.include?(new_book))
  end








end





  # * Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

# end library_spec.rb
