class ShopsController < ApplicationController
  before_action :search_shop, only: [:index, :search]
  before_action :set_shop, only:[:show]
  def index
    @shops = Shop.all.order("created_at DESC")
    set_shop_column
    set_tag_column
  end

  def show
  end

  def search
    binding.pry
    @results = @p.result.includes(:shop)
  end

  private
  def set_shop
    @shop = Shop.find(params[:id])
  end

  def search_shop
    @p = Shop.ransack(params[:q])
  end

  def set_shop_column
    @shop_genre = Shop.select("genre").distinct
    @shop_address = Shop.select("prefecture_id").distinct
  end

  def set_tag_column
    @tag_name = Tag.select("id").distinct
  end
  
end
