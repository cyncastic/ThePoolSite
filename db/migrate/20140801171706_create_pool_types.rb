class CreatePoolTypes < ActiveRecord::Migration
  def change
    create_table :pool_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
