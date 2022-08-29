class CashRegister
    attr_accessor :discount  , :price , :quantity, :items, :total, :prev_payment
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    

    def add_item(title,price,quantity=1)
        
        self.prev_payment = price * quantity
        self.total += prev_payment
        quantity.times do
            self.items << title
          end
    end

    def apply_discount
        if self.discount > 0
        after_discount = self.total - self.discount * 0.01 * self.total
         self.total = after_discount.to_i
        "After the discount, the total comes to $#{after_discount.to_i}."
       
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.prev_payment
      end

    
end