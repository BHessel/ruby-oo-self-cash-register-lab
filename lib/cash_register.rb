require 'pry'


class CashRegister
    
    #attr_accessor = :total
    
    def initialize(discount=nil) 
        @total = 0
        @discount = discount
    end
   
    def cash_register
    end

    def cash_register_with_discount
    end


    def discount
        @discount
    end
    
    def total=(current_total)
        @total = current_total
    end
    
    def total(quantity=0.0)
        @total
    end
    
    def add_item (item, price, quantity)
    #binding.pry
        @total += price
    end

    





end

