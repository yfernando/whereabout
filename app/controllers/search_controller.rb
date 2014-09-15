class SearchController < ApplicationController
  before_action :authenticate_user!

  def index
    @activities = Activity.where(who: current_user.friends.map(&:id))
  end
  
  def search
    category = Category.find_by(id: params[:category_id]) || all_categories
    @pois = all_pois category
    # require 'pry'; binding.pry
    render 'search'
  end

  private
  def all_categories
    Category.where(user_id: nil)
  end

  def all_pois(category)
    Array(category).map(&:pois).flatten
  end
end
