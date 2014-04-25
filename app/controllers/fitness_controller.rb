class FitnessController < ApplicationController
  skip_before_action :authorize

  def index
    @deals = Deal.where(:category => 'Fitness')

  end

  def show
     # @deals = Deal.all
#@deals = Deal.all
  end
end
