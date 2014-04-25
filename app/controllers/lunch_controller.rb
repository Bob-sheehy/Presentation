class LunchController < ApplicationController
  skip_before_action :authorize
#Lunch Page Deals
  def index
      @deals = Deal.where(:category => 'Lunch')

  end

  def show
  end
end
