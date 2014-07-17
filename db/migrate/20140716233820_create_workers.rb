class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :first_name
      t.string :last_name
      t.text :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
