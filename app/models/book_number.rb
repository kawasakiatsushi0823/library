class BookNumber < ActiveRecord::Base
  has_many :lending
  belongs_to :edition

end
