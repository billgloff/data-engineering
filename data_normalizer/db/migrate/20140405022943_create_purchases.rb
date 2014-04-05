class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :customer
      t.references :item

      t.timestamps
    end
  end
end
