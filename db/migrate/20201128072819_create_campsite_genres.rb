class CreateCampsiteGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :campsite_genres do |t|
    	t.references :campsite, foreign_key: true
    	t.references :genre, foreign_key: true

        t.timestamps
    end
  end
end
