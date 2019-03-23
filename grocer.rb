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
  result_cart = {}
  
  cart.each do |food, info|
    coupons.each do |coupon|
      if food == coupon[:item] && info[:count] >= coupon[:num]
        info[:count] = info[:count] - coupon[:num]
        
        if result_cart["#{food} W/COUPON"]
          result_cart["#{food} W/COUPON"][:count] += 1
        else
          result_cart["#{food} W/COUPON"] = {
            :price => coupon[:cost],
            :clearance => info[:clearance],
            :count => 1
          }
        end
      end
    end
    result_cart[food] = info
  end
  result_cart
end

def apply_clearance(cart)
  # code here
  result_cart = {}
  
end

def checkout(cart, coupons)
  # code here
end
