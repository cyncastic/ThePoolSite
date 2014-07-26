class UpdateCustomers < ActiveRecord::Migration
  def change

  	remove_column :customers, :last_name

  	rename_column :customers, :first_name, :full_name

  end
end
