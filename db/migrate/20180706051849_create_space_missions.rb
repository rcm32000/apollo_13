class CreateSpaceMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :space_missions do |t|
      t.string :title
      t.integer :trip_length
    end
  end
end
