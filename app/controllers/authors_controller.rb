# @restful_api 1.0
#
# Creative authors
#
class AuthorsController < ApplicationController

  # @url /authors
  # @action POST
  #
  # Create new author
  #
  # @required [String] name Full name of the person
  # @optional [Date] birthdate Date of birth
  #
  # @response [Author] The created author
  #
  def create
    author = Author.create(params)
    redirect_to author_path(author)
  end

  # @url /authors/:id
  # @action GET
  #
  # View an author
  #
  # @required [Integer] id Identifier the person
  #
  # @response [Author] The requested user
  #
  def show
    @author = Author.find(params[:id])
  end

  # @url /authors
  # @action GET
  #
  # View list of all users
  #
  # @response [Array<Author>] List of authors
  #
  def index
    @authors = Author.all
  end
end
