class CreateTickers < ActiveRecord::Migration[6.1]
  def change
    create_table :tickers do |t|
      t.string :ticker_name
      t.string :name
      t.string :description
      t.date :startDate
      t.date :endDate

      t.timestamps
    end
  end
end
