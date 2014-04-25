class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :deal
  belongs_to :cart
  
##Book Ruby, S., Thomas, D. and Hansson, D. H. n.d. Agile web development with Rails 4.
  
  def total_price
  deal.price * quantity
end
end
