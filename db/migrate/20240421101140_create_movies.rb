class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.float :rating
      t.references :theatre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
