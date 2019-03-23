def consolidate_cart(cart)
  # code here
  result_cart = {}
  
  cart.each_with_index do |item, i|
    item.each do |food, info|
      if result_cart[food]
        result_cart[food][:count] += 1
      else
        result_cart[food] = info
        result_cart[food][:count] = 1
      end
    end
  end
  
  result_cart
end

def apply_coupons(cart, coupons)
  # code here
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
