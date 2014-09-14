class SearchController < ApplicationController
  before_action :authenticate_user!

  def index
    @pois = Category.where(user_id: nil).map(&:pois).flatten
  end
  
  def search
    category = Category.find_by(id: params[:category_id])
    @pois = category.pois
    # require 'pry'; binding.pry
    render 'index'
  end
end
