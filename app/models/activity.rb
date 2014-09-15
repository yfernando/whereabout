class Activity < ActiveRecord::Base
  belongs_to :who, class: User
end
