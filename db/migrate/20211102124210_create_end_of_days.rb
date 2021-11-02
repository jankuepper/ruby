class CreateEndOfDays < ActiveRecord::Migration[6.1]
  def change
    create_table :end_of_days do |t|
      t.date :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.integer :volume
      t.float :dividend
      t.float :split
      t.references :ticker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
