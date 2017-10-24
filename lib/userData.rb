#This class is used to access the users data from the API
#user - is given an email and outputs an ID
#purchases - is given an ID and outputs an aray of spend.

class UserData
  attr_accessor :user_email, :api_data

  def initialize(email)
    @user_email = email
    @api_data = {"data":[{"id":"KZHR-1H35-2IH8-JXYN","first_name":"Quincy","last_name":"Schimmel","phone":"186.301.6921 x948","email":"schimmel_quincy@ernser.io"},{"id":"S27G-8UMJ-LDSL-UOPN","first_name":"Henry","last_name":"Terry","phone":"636-387-6074 x690","email":"terry_henry@doyle.io"}]}
  end

end
