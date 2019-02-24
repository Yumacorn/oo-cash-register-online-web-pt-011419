class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, count = 1, price)
    @total += price*count
  end

  def apply_discount
end
