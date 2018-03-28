class CategoriesController < ApplicationController
  before_action :get_category, only: [:show]
  ##TODO add auth
  def index
    @categories = Category.all
  end

  def show
  end
  
  def new
    @category = Category.new
  end

  private

  def get_category
    @category = Category.find(params[:id])
  end
end
