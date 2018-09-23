class Order
  attr_accessor :items, :shipping_address, :payment_method

  def initialize(order)
    @items = order
  end

  def confirm
    puts "Your order has been place \n
      Your Item #{items} will be shipped to #{shipping_address} \n
      Your #{payment_method} will be charged for the order"
  end
end

class CheckoutProcess
  attr_accessor :order

  def initialize(order)
    @order = order
  end

  def set_shipping_address(address)
    @order.shipping_address = address
  end

  def set_payment_method(payment_method)
    @order.payment_method = payment_method
  end

  def review_order
    puts "Order contains: #{@order.items}"
    puts "Shipping Address is #{@order.shipping_address}"
    puts "Payment Method is #{@order.payment_method}"
  end

  def place_order
    order.confirm
  end
end

class OneClickCheckout
  attr_reader :checkout_process, :default_address, :default_payment

  def initialize(order, default_address, default_payment)
    @checkout_process = CheckoutProcess.new(order)
    @default_address = default_address
    @default_payment = default_payment
  end

  def click
    @checkout_process.set_shipping_address(default_address)
    @checkout_process.set_payment_method(default_payment)
    @checkout_process.place_order
  end
end

order = Order.new('New order gotten')
checkout = CheckoutProcess.new(order)
default_address = '234, Etim Iyang Crescent, Victoria Island, Lagos'
default_payment_method = 'Visa Credit Card'

checkout.set_shipping_address('235, ikorodu road, ilupeju, lagos')
checkout.set_payment_method('Chase Credit Card')

checkout.review_order

checkout.place_order

one_click_checkout = OneClickCheckout.new(order, default_address, default_payment_method)
one_click_checkout.click

