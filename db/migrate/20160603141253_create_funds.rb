class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.text :fund_family
      t.text :asset_class
      t.text :fund_name
      t.integer :user_id

      t.timestamps

    end
  end
end
