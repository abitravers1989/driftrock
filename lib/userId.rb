
class UserId
  attr_accessor :user_id

  def initialize(user_or_purchase_data)
    @user_id = 'Not defined'
    @accessing_data = user_or_purchase_data
end

  def getting_user_data
    @accessing_data.user_url
  end

  def getting_purchase_data
    @accessing_data.purchase_url
  end

  def find_user_id
    getting_user_data
    @accessing_data.output['data'].each do |user_hashes|
      find_user_id_2(user_hashes)
    end
  end

  def find_user_id_2(user_hashes)
    @user_id = user_hashes['id'] if user_hashes['email'] == @user_email
    end
end

user = UserId.new(AccessingData.new)
user.find_user_id
