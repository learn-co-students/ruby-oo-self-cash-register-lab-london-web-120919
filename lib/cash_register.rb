require "pry"

class CashRegister

    attr_accessor :total, :discount

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @basket = []
        @transactions = []
    end

    def add_item (title, price, quantity = 1)
        quantity.times do @basket << title end
        @last_item = (price * quantity)
        self.total += @last_item
        @transactions << @last_item
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            reduction = @discount * 0.01 * @total
            self.total -= reduction
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @basket
    end

    def void_last_transaction
        self.total -= @transactions.pop
    end
end