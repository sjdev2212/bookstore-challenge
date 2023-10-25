class Publisher < ApplicationRecord
    has_many :books, dependent: :destroy
    has_many :authors, through: :books
    validates :name, presence: true
    validates :name, uniqueness: true

end
