class Users::RegistrationsController < Devise::RegistrationsController
  def build_resource(user=nil)
    #hash = { :uid => "123456789" }
    #hash = { :uid => "123456789" }
    user[:uid] = User.create_unique_string
    #temp = User.create_unique_string
    #temp.p
    #binding.pry
    #hash[:uid] = "123456789"
    #User.create_unique_string
    super
  end
end
