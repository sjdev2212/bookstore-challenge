class Book < ApplicationRecord
  has_one_attached :cover
  belongs_to :author
  belongs_to :publisher, optional: true
  validates :title, presence: true
  validates :isbn, presence: true, uniqueness: true
  validates :review, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :date_of_publication, presence: true
  validates :title, length: { maximum: 255 }
  validates :review, length: { maximum: 1000 }
  validate :date_of_publication_not_in_future

  def date_of_publication_not_in_future
    if date_of_publication.present? && date_of_publication > Date.today
      errors.add(:date_of_publication, "can't be in the future")
    end
  end
end
