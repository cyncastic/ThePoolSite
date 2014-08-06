class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :customer_id
      t.integer :job_type_id
      t.datetime :date_time
      t.integer :worker_id
      t.text :worker_notes
      t.boolean :best_day_ever
      t.boolean :completed

      t.timestamps
    end
  end
end
