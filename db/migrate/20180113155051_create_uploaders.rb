class CreateUploaders < ActiveRecord::Migration
  def change
    create_table :uploaders do |t|
      t.string :image
      
      t.timestamps null: false
    end
  end
end
