class AddUserIdToUploaders < ActiveRecord::Migration
  def change
    add_column :uploaders, :user_id, :integer
  end
end
