class RemoveStartdateFromWorkers < ActiveRecord::Migration
  def change
  	change_column :workers, :start_date,  :text
  	rename_column :workers, :start_date, :notes
  end
end
