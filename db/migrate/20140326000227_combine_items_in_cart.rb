class CombineItemsInCart < ActiveRecord::Migration
  def self.up
    Cart.all.each do |cart|
	sums = cart.line_items.group(:deal_id).sum(:quantity)
    sums.each do |deal_id, quantity| 
    if quantity > 1 
	cart.line_items.where(deal_id: deal_id).delete_all
    item = cart.line_items.build(deal_id: deal_id) 
	item.quantity = quantity 
	item.save! 
   end 
  end
end
end
def self.down
    LineItem.where("quantity>1").each do |lineitem|
      lineitem.quantity.times do
        LineItem.create :cart_id=>lineitem.cart_id,
          :deal_id=>lineitem.deal_id,:quantity =>1
      end
      lineitem.destroy
    end
  end
end