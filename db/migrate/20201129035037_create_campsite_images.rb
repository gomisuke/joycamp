class CreateCampsiteImages < ActiveRecord::Migration[5.2]
  def change
    create_table :campsite_images do |t|

    	t.references :campsite, foreign_key: true
    	t.string :image_id, null: false

      t.timestamps
    end
  end
end
