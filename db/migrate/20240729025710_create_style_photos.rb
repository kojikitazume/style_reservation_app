class CreateStylePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :style_photos do |t|
      t.string :title
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
