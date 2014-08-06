class ChangeupDateTimeForJobs < ActiveRecord::Migration
  def change
  	change_column :jobs, :date_time,  :date
  	rename_column :jobs, :date_time, :date
  	add_column :jobs, :time, :time
  end
end
