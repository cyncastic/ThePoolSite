class RemovePhones < ActiveRecord::Migration
  def change
  	 remove_column :customers, :cell_phone, :text
  	 remove_column :customers, :work_phone, :text
  	 remove_column :customers, :other_phone, :text
  end
end
