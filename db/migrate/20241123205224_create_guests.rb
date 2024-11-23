class CreateGuests < ActiveRecord::Migration[7.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.boolean :attending

      t.timestamps
    end
  end
end
