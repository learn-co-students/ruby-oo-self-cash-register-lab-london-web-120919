require "pry"
class CashRegister
    attr_accessor :total
    attr_reader :discount
    def initialize (discount=nil)
        @total = 0
        @discount = discount.to_f
        @basket = []
        @prices = []
    end
    def total
        @total.to_f
    end
    def discount
        @discount
        # binding.pry
        # 0
    end
    def add_item(title,price,quantity=1)
        self.total  += price * quantity
        quantity.times do @basket << title end
        @prices << price * quantity
    end

    #   applies the discount to the total price (FAILED - 1)
    #   returns success message with updated total (FAILED - 2)
    #   reduces the total (FAILED - 3)

    def apply_discount
        if self.discount > 0
            discountIn100 = self.discount / 100
            self.total -= self.total * discountIn100
            p "After the discount, the total comes to $#{self.total.to_i}."
        else
            p "There is no discount to apply."
        end
    end
    def items
       @basket
    end
    def void_last_transaction
        self.total -= @prices.last
    end
end