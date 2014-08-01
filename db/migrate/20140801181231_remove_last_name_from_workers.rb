class RemoveLastNameFromWorkers < ActiveRecord::Migration
  def change

  	remove_column :workers, :last_name

  	rename_column :workers, :first_name, :full_name
  end
end
