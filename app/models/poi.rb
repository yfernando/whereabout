class Poi < ActiveRecord::Base
  belongs_to :category

  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :category_id, presence: true
  validates :name, presence: true
end
