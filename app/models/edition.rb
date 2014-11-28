class Edition < ActiveRecord::Base
  belongs_to :book

  #validates :book_id, presence: true
  validates :kind, presence: true
  validate :kind_is_not_zero

  private

  def kind_is_not_zero
  	errors.add(:kind, 'is not 0') if kind == '0'
  end
end
