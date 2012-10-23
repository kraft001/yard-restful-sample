# @restful_api 1.0
#
# @property [String] name Full name of the user
# @property [Date] birthdate Date of birth
#
# @example
#   ```json
#   {
#     "name": "Ivan Ivanov",
#     "birthdate": "1985-12-25"
#   }
#   ```
class Author < ActiveRecord::Base
  attr_accessible :birthdate, :name
end
