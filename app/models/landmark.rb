class Landmark < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :comment, presence: true
 

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
