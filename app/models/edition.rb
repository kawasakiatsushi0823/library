class Edition < ActiveRecord::Base
  belongs_to :book
  self.inheritance_column = :_type_disabled
end
