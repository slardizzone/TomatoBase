class RenameMoviesUsers < ActiveRecord::Migration
  def change
    rename_table :movies_users, :reviewed_movies
  end
end
