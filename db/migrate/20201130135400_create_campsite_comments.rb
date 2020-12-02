class CreateCampsiteComments < ActiveRecord::Migration[5.2]
  def change
    create_table :campsite_comments do |t|
    	t.references :campsite, foreign_key: true
    	t.references :user, foreign_key: true
    	t.string :title, null: false
    	t.string :comment, null: false
    	t.float :rate, null: false
        t.timestamps
    end
  end
end
