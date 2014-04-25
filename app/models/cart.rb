class Cart < ActiveRecord::Base
has_many :line_items, dependent: :destroy

##
## Book Ruby, S., Thomas, D. and Hansson, D. H. n.d. Agile web development with Rails 4.
##

## increments items in cart
def add_deal(deal_id) 
   current_item = line_items.find_by(deal_id: deal_id) 
   if current_item
   current_item.quantity += 1 
      else 
	  current_item = line_items.build(deal_id: deal_id) 
	end 
	current_item 
  end

 ## add up deal in cart
def total_price
    line_items.to_a.sum { |item| item.total_price }
end
end
