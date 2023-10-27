class Author < ApplicationRecord
  has_many :books, dependent: :nullify

  belongs_to :publisher, optional: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :date_of_birth, presence: true
  validates :about, presence: true

  def author_age
    if date_of_birth.present?
      age = Date.today.year - date_of_birth.year
      age -= 1 if Date.today < date_of_birth + age.years
      age
    end
  end

  def associated_books
    books.count
  end
end
