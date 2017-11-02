# Class calculates the item which appears in purchase data the most frequently

class MostSold
  attr_accessor :highest_total, :most_sold_item

  def initialize(purchase_data, user_data)
    @purchase_data = purchase_data
    @user_data = user_data
    @item_total = 0
    @highest_total = 0
    @most_sold_item = "Not set"
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
   end
    set_item_name(item_name)
    @item_total = 0
  end

  def set_item_name(item_name)
    if (@item_total > @highest_total)
     @highest_total += @item_total
     @most_sold_item = item_name
    end
  end

  def calculating_spend(purchase)
    @item_total += purchase.to_f
  end

  def output_most_sold_item
    puts "#{@most_sold_item}"
  end

end
