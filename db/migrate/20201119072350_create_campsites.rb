class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
    	t.string :name
    	t.text :explanation
    	t.integer :postcode
    	t.string :prefecture_code
    	t.string :address_city
    	t.string :address_street
    	t.string :address_building


      t.timestamps
    end
  end
end
