def consolidate_cart(cart)
  # code here
  total_cart = {}
  
  cart.each_with_index do |item, i|
    item.each do |food, info|
      if total_cart[food]
        total_cart[food][:count] += 1
      else
        total_cart[food] = info
        total_cart[food][:count] = 1
      end
    end
  end
  
  total_cart
end

def apply_coupons(cart, coupons)
  # code here
  coupon_cart = {}
  
  cart.each do |food, info|
    coupons.each do |coupon|
      if food == coupon[:item] && info[:count] >= coupon[:num]
        info[:count] = info[:count] - coupon[:num]
        
        if coupon_cart["#{food} "]
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
