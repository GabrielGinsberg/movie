class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
