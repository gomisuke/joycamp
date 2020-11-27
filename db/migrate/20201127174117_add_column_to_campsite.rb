class AddColumnToCampsite < ActiveRecord::Migration[5.2]
  def change
  	add_reference :campsites, :admin, foreign_key: true
  	add_reference :campsites, :genre, forrign_key: true
  end
end
