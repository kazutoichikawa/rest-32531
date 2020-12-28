class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :shop_name,      null: false
      t.integer :genre_id,      null: false
      t.integer :choise_a_id,   null: false
      t.integer :choise_b_id
      t.integer :choise_c_id
      t.text :profile,          null: false
      t.string :p_code,         null: false
      t.integer :prefecture_id, null: false
      t.string :city,           null: false
      t.string :address,        null: false
      t.string :building
      t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
