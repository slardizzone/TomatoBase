class ChangeColumnsInMovies < ActiveRecord::Migration
  def change
    change_column :movies, :cast, :text 
    change_column :movies, :plot, :text 
  end
end
