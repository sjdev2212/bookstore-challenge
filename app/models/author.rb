class Author < ApplicationRecord
    has_many :books
    belongs_to :publisher, optional: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :date_of_birth, presence: true
    validates :about, presence: true


end
