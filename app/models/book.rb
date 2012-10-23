# @restful_api 1.0
#
# @property [Author] author Author of the story
# @property [String] title Title of the story
# @property [Integer] year Imprint date
# @property [String] genre Genre of the book
#
# @example
#   ```json
#   {
#     "author": {author fields},
#     "title": "My first book",
#     "year": 2012,
#     "genre": "comics"
#   }
#   ```
class Book < ActiveRecord::Base
  attr_accessible :author, :title, :year, :genre

  scope :by_year, ->(year) { where(year: year) unless year.blank? }
end
