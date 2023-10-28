class PriceUpdate < ApplicationRecord
  belongs_to :publisher , dependent: :nullify

end
