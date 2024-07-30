class AddFeaturedToStylists < ActiveRecord::Migration[6.1]
  def change
    add_column :stylists, :featured, :boolean
  end
end
