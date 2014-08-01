class AddPhonesToCustomers < ActiveRecord::Migration
  def change
  	 add_column :customers, :cell_phone, :text
  	 add_column :customers, :work_phone, :text
  	 add_column :customers, :other_phone, :text
  end
end
