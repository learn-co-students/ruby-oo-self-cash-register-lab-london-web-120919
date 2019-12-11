class CashRegister

    attr_accessor :total, :quantity, :discount, :item, :price, :transactions, :items    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
    end

    def total
        @total
    end 

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items << title
            @transactions << price * quantity
        end 
    end

    #def add_item(item, price, quantity = 1)
     #   if quantity > 1
      #      counter = 0
       #     while counter < item[counter].length 
        #        @items << item[counter]
         #           counter += 1
          #      end 
           # else 
            #    @items << item 
            #end 
        #self.total += price * quantity
    #end

    #def apply_discount
     #   if discount = 0
     #      "There is no discount to apply."
     #   else 
     #      discount = discount.to_f/100
     #       total = self.total - (self.total * discount)
     #       "After the discount, the total comes to $#{total.to_i}."
    #  end
    #end

    def apply_discount 
        if self.discount > 0
            self.total = self.total - ((self.total/100)*self.discount)
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end 
    
    def items
        @items
    end 

    def void_last_transaction
        self.total -= transactions.last
    end 
end



