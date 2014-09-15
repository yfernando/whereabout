class Poi < ActiveRecord::Base
  belongs_to :category

  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :category_id, presence: true
  validates :name, presence: true


  after_create :record_activity

  def record_activity
    Activity.create! who: self.category.user, what: "created a new poi '#{self.name}'"
  end
end
