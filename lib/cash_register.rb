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
        @total += price * quantity
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
        if @discount == nil
            "There is no discount to apply."            
        else 
        @total = @total - (@total * @discount/100)
        "After the discount, the total comes to $#{@total}."
        end
    end
    
    def items
      @item_list
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end
    
    
end
