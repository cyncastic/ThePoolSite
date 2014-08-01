class CustomersAddHeater < ActiveRecord::Migration
  def change
  	 add_column :customers, :heater, :boolean
  	 add_column :customers, :salt, :boolean
  	 add_column :customers, :filter_type, :integer
  	 add_column :customers, :pool_type, :integer
  end
end
