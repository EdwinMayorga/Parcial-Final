class CreateWareHouseRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :ware_house_records do |t|
      t.integer :cantidad
      t.integer :user_id
      t.references :supplier, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
