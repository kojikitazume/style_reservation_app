class CreateStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :styles do |t|
      t.string :title
      t.text :description
      t.boolean :trending

      t.timestamps
    end
  end
end
