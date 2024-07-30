class AddFieldsToStylists < ActiveRecord::Migration[6.1]
  def change
    add_column :stylists, :name, :string
    add_column :stylists, :profile, :text
    add_column :stylists, :profile_image, :string
  end
end
