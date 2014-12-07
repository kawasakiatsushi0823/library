class BookNumber < ActiveRecord::Base
  has_many :lending
  belongs_to :edition

  scope :on_loan, -> {
    where(status: 1)
  }
end
