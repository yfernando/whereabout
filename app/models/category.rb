class Category < ActiveRecord::Base
  belongs_to :user
  has_many :pois

  after_create :record_activity

  def record_activity
    Activity.create! who: self.user, what: "created a new category '#{self.name}'"
  end
end
