class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies, :force => true do |t|
			t.string :p_id, :unique => true
      t.string :title
      t.string :rating
      t.text :description
      t.integer :release_date
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
