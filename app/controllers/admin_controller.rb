###########################################################################################
##
##Ref Book Ruby, S., Thomas, D. and Hansson, D. H. n.d. Agile web development with Rails 4.
##
###########################################################################################


class AdminController < ApplicationController
  def index
  @total_orders = Order.count
  end
end
##count where deal name = %%bobs%%