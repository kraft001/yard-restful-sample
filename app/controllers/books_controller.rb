# @restful_api 1.0
#
# Books and articles
#
class BooksController < ApplicationController

  # @url /books
  # @action POST
  #
  # Create new book
  #
  # @required [Integer] author_id Identifier of an author
  # @required [String] title Title of the book
  # @optional [Integer] year Imprint year
  # @optional [String] genre Genre of the story
  #
  # @response [Book] The created book
  #
  def create
    book = Book.create(params)
    redirect_to book_path(book)
  end

  # @url /books/:id
  # @action GET
  #
  # View a book
  #
  # @required [Integer] id Identifier the book
  #
  # @response [Book] The requested book
  #
  def show
    @book = Book.find(params[:id])
  end

  # @url /books
  # @action GET
  #
  # View list of all books
  #
  # @optional [Integer] year Filter books by imprint date
  #
  # @response [Array<Book>] List of books
  #
  def index
    @books = Book.by_year(params[:year]).all
  end
end
