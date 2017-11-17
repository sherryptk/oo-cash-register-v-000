
class CashRegister
  attr_accessor :total
  attr_reader :discount, :@items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price
    @total += price*quantity
    quantity.times do
    @items << title
  end
end

  def apply_discount
    if @discount > 0
      @total  = (@total - (@discount.to_f/100 * @total))
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  # def items
  #   @items
  # end

  def void_last_transaction
    @total-=@last_transaction
  end

end
