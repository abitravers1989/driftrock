require_relative './controller.rb'

class SelectionProcess

  def initialize
    user_data = AccessingData.new.user_url
    purchase_data = AccessingData.new.purchase_url
    controller = Controller.new(user_data, purchase_data)
  end

  def selection_menu(functionality_command)
    case functionality_command
      # p functionality_command
    when functionality_command[0] == "total_spend"
        controller.total_spend(functionality_command[1])
      when functionality_command[0] == "average_spend"
       controller.average_spend(functionality_command[1])
     when functionality_command[0] == "most_loyal"
      controller.most_loyal
    when functionality_command[0] == "highest_value_customer"
       controller.highest_value_customer
     when functionality_command[0] == "most_sold"
       controller.most_sold_item
    end
  end

end
