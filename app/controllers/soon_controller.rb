class SoonController < ApplicationController
  skip_before_action :authorize

  def index
      @deals = Deal.where(:category => 'Coming Soon')
    #    @deals = Deal.order(:name)

  end

  def show
  end
end
