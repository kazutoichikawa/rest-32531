class ShopsController < ApplicationController
  def index
    @shops = Shop.all.order("created_at DESC")
  end

  def new
    
  end
end
