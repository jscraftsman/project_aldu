class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, :null => false, :unique => true, :default => ""
    add_column :users, :first_name, :string, :null => false, :default => ""
    add_column :users, :last_name, :string, :null => false, :default => ""
    add_column :users, :gender, :string, :null => false, :default => ""
    add_column :users, :birthday, :date, :null => false, :default => ""
    add_column :users, :address, :string
    add_column :users, :town, :string
    add_column :users, :country, :string
    add_column :users, :relationship_status, :string, :default => "single"
  end
end
