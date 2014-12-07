class Lending < ActiveRecord::Base
  belongs_to :book_number
  belongs_to :member
end
