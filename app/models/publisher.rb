class Publisher < ApplicationRecord
    has_many :books, dependent: :destroy
    has_many :authors, through: :books
    validates :name, presence: true
    validates :name, uniqueness: true


    def associated_books
        number_of_books = books.count
    end

end
