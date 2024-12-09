class AddDataToGuests < ActiveRecord::Migration[7.2]
  def change
    add_column :guests, :phone, :string
    add_column :guests, :partner, :boolean, default: false, null: false
    add_column :guests, :partners_name, :string, array: true, default: [], null: false # For PostgreSQL only
    add_column :guests, :children_attending, :boolean, default: false, null: false
    add_column :guests, :children_quantity, :integer, default: 0, null: false
    add_column :guests, :assist_church, :boolean, default: false, null: false
    add_column :guests, :dietary_restrictions, :boolean, default: false, null: false
    add_column :guests, :dietary_restrictions_indications, :string
    add_column :guests, :other_food_preference, :string
    add_column :guests, :message, :text
  end
end
