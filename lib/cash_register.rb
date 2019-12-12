require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)

        @total += price * quantity
        @items += [title] * quantity
        @last_price = price * quantity
        
        

    end

    def apply_discount
        if discount > 0
            @total = total - total * discount / 100.00
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
            @total -= @last_price

    end








end

