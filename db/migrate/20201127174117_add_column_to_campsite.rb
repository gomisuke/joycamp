class AddColumnToCampsite < ActiveRecord::Migration[5.2]
  def change
  	add_reference :campsites, :admin, foreign_key: true
  end
end
