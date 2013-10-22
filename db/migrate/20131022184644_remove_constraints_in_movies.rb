class RemoveConstraintsInMovies < ActiveRecord::Migration
  def change
    change_column :movies, :cast, :text, :null => true
    change_column :movies, :plot, :text, :null => true
  end
end
