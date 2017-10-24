#This class is used to access the users data from the API
#user - is given an email and outputs an ID
#purchases - is given an ID and outputs an aray of spend.

class UserData
  attr_accessor :user_email, :users, :user_id

  def initialize(email)
    @user_email = email
    @users= {"data":[{"id":"KZHR-1H35-2IH8-JXYN","first_name":"Quincy","last_name":"Schimmel","phone":"186.301.6921 x948","email":"schimmel_quincy@ernser.io"},{"id":"S27G-8UMJ-LDSL-UOPN","first_name":"Henry","last_name":"Terry","phone":"636-387-6074 x690","email":"terry_henry@doyle.io"}]}
    @user_id = "Not defined"
  end

  def find_user_id_1
    @users[:data].each do |user_hashes|
      find_user_id_2(user_hashes)
     end
  end

  def find_user_id_2(user_hashes)
    if (user_hashes[:email] == @user_email)
      @user_id = user_hashes[:id]
    end
  end

end


user = UserData.new("schimmel_quincy@ernser.io")
user.find_user_id_1
