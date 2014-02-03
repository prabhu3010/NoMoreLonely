class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :profile_image, :string
    add_column :users, :user_name, :string
    add_column :users, :location, :string
    add_column :users, :contact, :string
  end
end
