require_relative './lib/controller.rb'

functionality_command = ARGV

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


# user_data = AccessingData.new.user_url
# purchase_data = AccessingData.new.purchase_url
controller = Controller.new(user_data, purchase_data)


case functionality_command[0]
  # p functionality_command
when "total_spend"
    controller.total_spend(functionality_command[1])
  when "average_spend"
   controller.average_spend(functionality_command[1])
 when "most_loyal"
   controller.most_loyal
when "highest_value_customer"
   controller.highest_value_customer
 when "most_sold"
   controller.most_sold_item
else
  p "No selection made"
end
