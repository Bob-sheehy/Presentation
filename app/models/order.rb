class Order < ActiveRecord::Base
has_many :line_items, dependent: :destroy
GENDER = [ "Male", "Female" ]
STATUS = [ "VALID", "DEAL USED", "DEAL OUT OF DATE", "DEAL VOID" ]
PAYMENT_TYPES = [ "Visa", "Master Card", "Laser", "American Express" ]

#Geocoder
geocoded_by :address
after_validation :geocode

## Book Ruby, S., Thomas, D. and Hansson, D. H. n.d. Agile web development with Rails 4.
def add_line_items_from_cart(cart)
 cart.line_items.each do |item|
 item.cart_id = nil
 line_items << item
 end
end

end
