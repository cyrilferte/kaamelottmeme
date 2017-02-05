class CreateMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :memes do |t|
      t.references :image, foreign_key: true
      t.string :toptext
      t.string :bottomtext
      t.string :title

      t.timestamps
    end
  end
end
