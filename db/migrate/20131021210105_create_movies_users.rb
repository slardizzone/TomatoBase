class CreateMoviesUsers < ActiveRecord::Migration
  def change
    create_table :movies_users do |t|
      t.belongs_to :user, null: false
      t.belongs_to :movie, null: false
      t.string :category, null: false
    end
    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE movies_users
          ADD CONSTRAINT fk_users
          FOREIGN KEY (user_id)
          REFERENCES users(id),
          ADD CONSTRAINT fk_movies
          FOREIGN KEY (movie_id)
          REFERENCES movies(id)
        SQL
      end
    end
  end
end

