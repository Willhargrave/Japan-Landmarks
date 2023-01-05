class Area < ApplicationRecord


  validates :name, uniqueness: true, presence: true
  validates :location, presence: true

  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?

end
