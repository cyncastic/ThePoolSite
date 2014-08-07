class UpdateCustTypeNames < ActiveRecord::Migration
  def change
  	rename_column :customers, :filter_type, :filter_type_id
  	rename_column :customers, :pool_type, :pool_type_id
  end
end
