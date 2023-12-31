class Publisher < ApplicationRecord
  has_many :books, dependent: :nullify

  has_many :authors, through: :books, dependent: :nullify
  validates :name, presence: true
  validates :name, uniqueness: true

  def associated_books
    number_of_books = books.count
  end
end
