class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, count = 1, price)
    @total += price*count
    count.times do
      @items << item
    end
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * @discount/100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end
end
