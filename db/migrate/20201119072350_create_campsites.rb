class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
    	t.string :name, null: false
    	t.text :explanation, null: false
    	t.integer :postcode, null: false
    	t.integer :prefecture_code, null: false
    	t.string :address_city, null: false
    	t.string :address_street, null: false
    	t.string :address_building, null: false
      t.integer :approval_status, null: false, default: 0


      t.timestamps
    end
  end
end
