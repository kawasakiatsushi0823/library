class Book < ActiveRecord::Base
  has_many :editions
  has_many :active_editions, -> { where('editions.deleted_at IS NULL') }, class_name: :Edition 
  accepts_nested_attributes_for :editions

  validates :title, presence: true
  validates :editions,  presence: true

  scope :active_books, -> {
    where(deleted_at: nil)
  }

end
