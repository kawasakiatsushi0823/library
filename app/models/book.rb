class Book < ActiveRecord::Base
  has_many :editions, class_name: :Edition, foreign_key: :book_id
  accepts_nested_attributes_for :editions

  #ステータスメソッド
  STATUS = %i(貸出利用可能 閲覧専用)
  enum status: STATUS
end
