class User < ActiveRecord::Base
  include Gravtastic
  gravtastic :size => 24
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :pois, through: :categories
  has_many :categories
  has_many :friends, class: User
end
