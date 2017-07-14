class CreateColis < ActiveRecord::Migration
  def change
    create_table :colis do |t|
      t.string :colis_type
      t.integer :weight_colis
      t.integer :price_colis
      t.text :summary
      t.string :address_departume
      t.string :address_arrival
      t.boolean :is_weak
      t.boolean :is_urgent
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
