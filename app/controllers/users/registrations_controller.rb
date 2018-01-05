class Users::RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    #hash[:uid] = User.create_unique_string
    hash[:uid] = "123456789"
    super
  end
end
