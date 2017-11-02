# Class calculates the item which appears in purchase data the most frequently

class MostSold
  attr_accessor :highest_total

  def initialize(purchase_data, user_data)
    @purchase_data = purchase_data
    @user_data = user_data
    @item_total = 0
    @highest_total = 0
  end

  def total_item_revenue
    @purchase_data.each do |purchase|
      item_name = purchase["item"]
      total_item_spend(item_name)
    end
  end

  def total_item_spend(item_name)
    @purchase_data.each do |purchase|
      if (item_name == purchase["item"])
        calculating_spend(purchase["spend"])
      end
      p @item_total
      p @highest_total
     end
    p "last item total #{@item_total}"
     if (@item_total > @highest_total)
      @highest_total += @item_total
     end
     @item_total = 0
    puts "reset#{@item_total}"
    puts "highest now #{@highest_total}"
  end

  def calculating_spend(purchase)
    @item_total += purchase.to_f
  end

end

purchase_data =
  [
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Synergistic Aluminum Shoes',
      'spend' => '27.78'
    },
    {
      'user_id' => 'S27G-8UMJ-LDSL-UOPN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '34.21'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Gorgeous Paper Hat',
      'spend' => '54.5'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Gorgeous Paper Hat',
      'spend' => '56.5'
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Aerodynamic Copper Bench',
      'spend' => '3.21'
    }
  ]

user_data =
  [
    {
      'id' => 'KZHR-1H35-2IH8-JXYN',
      'first_name' => 'Quincy',
      'last_name' => 'Schimmel',
      'phone' => '186.301.6921 x948',
      'email' => 'schimmel_quincy@ernser.io'
    },
    {
      'id' => 'S27G-8UMJ-LDSL-UOPN',
      'first_name' => 'Henry',
      'last_name' => 'Terry',
      'phone' => '636-387-6074 x690',
      'email' => 'terry_henry@doyle.io'
    }
  ]

sold = MostSold.new(purchase_data, user_data)
sold.total_item_revenue
