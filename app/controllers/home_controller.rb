class HomeController < ApplicationController
skip_before_action :authorize
include CurrentCart
before_action :set_cart

  def index
  @deals = Deal.order(:name)
  end

  def show
@deals
  #distance = params[:distance].round(2)
#@deal = Deal.find(params[:id])
#@deals = @deal.nearby(distance)
  end
end
