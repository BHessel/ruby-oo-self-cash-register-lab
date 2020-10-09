require 'pry'


class CashRegister
    
    attr_accessor :total, :last_transaction, :discount
    
    def initialize(discount=nil) 
        @total = 0
        @discount = discount
        @item_list = []
        @price_list = []
    end

    def add_item (item, price, quantity=1)
        self.total += price * quantity
        quantity.times do
            @item_list << item
        end
        quantity.times do
            @price_list << price
        end
        @last_transaction = quantity * price
        #binding.pry
    end

    def apply_discount
        if self.discount == nil
            "There is no discount to apply."            
        else 
        self.total = self.total - (self.total * self.discount/100)
        "After the discount, the total comes to $#{self.total}."
        end
    end
    
    def items
      @item_list
    end

    def void_last_transaction
        self.total = self.total - @last_transaction
    end
    
    
end
