class AddNotNullAttributeToUserNameInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :user_name, :string, :default => ""
  	change_column_null :users, :user_name, false
  end
end
