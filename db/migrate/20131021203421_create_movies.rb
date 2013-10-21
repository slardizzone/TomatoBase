class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.string :title, null: false
    	t.string :year, null: false
      t.text :img_url, null: false
      t.text :plot, null: false
      t.text :cast, null: false
      t.integer :rt_score, null: false
    end
  end
end
