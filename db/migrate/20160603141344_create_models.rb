class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :currencies
      t.integer :commodities
      t.integer :fixed_income
      t.integer :equity
      t.integer :time_period
      t.integer :fund_id

      t.timestamps

    end
  end
end
