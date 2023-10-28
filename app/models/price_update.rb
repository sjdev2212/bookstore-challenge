class PriceUpdate < ApplicationRecord
  belongs_to :publisher, dependent: :destroy
end
