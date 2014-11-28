class Book < ActiveRecord::Base
  has_many :editions 
  has_many :active_editions, -> { where('editions.deleted_at IS NOT NULL') }, class_name: :Edition 
  accepts_nested_attributes_for :editions

  #ステータスメソッド
  STATUS = %i(貸出利用可能 閲覧専用)
  enum status: STATUS

  validates :title, presence: true
  validates :status,  presence: true
  validates :editions,  presence: true


end
