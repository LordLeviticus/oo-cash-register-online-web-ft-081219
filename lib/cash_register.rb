class CashRegister
  
  
  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @last_transaction_amount = (price * quantity)
  end
  
  def apply_discount
    discount_decimal = @discount / 100
    total_discount = @total * discount_decimal
    @total -= total_discount


end
