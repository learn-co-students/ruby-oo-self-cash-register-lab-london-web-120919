
class CashRegister
attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        quantity.times do
            self.items.push(title)
        end
        self.last_item = {title: title, price: price, quantity: quantity}
        self.total += price * quantity
    end

    def apply_discount
        discount = self.total * (self.discount.to_f / 100)
        total = self.total -= discount
        if total > 0
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        if self.items.length == self.last_item[:quantity]
            self.total = 0.0
        else
            self.total -= self.last_item[:price]
        end
    end
end