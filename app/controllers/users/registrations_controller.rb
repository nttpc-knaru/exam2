class Users::RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    #hash[:uid] = User.create_unique_string
    temp = User.create_unique_string
    temp.p
    binding.pry
    #hash[:uid] = "123456789"
    #User.create_unique_string
    super
  end
end
