class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :artist
      t.string :title
      t.string :catalog_number
      t.string :eb_number
      t.string :google_drive_url
      t.string :customer
      t.date :in_hand_date
      t.integer :units_ordered
      t.integer :sides
      t.integer :discs
      t.string :format
      t.integer :speed
      t.string :matrix
      t.string :weight
      t.string :center_label
      t.string :jacket_type
      t.string :jacket_finish
      t.string :inner_sleeve_one
      t.string :inner_sleeve_one_finish
      t.string :insert_type
      t.string :insert_color
      t.string :insert_finish
      t.string :outerwear
      t.integer :test_pressing_quantity
      t.string :inner_sleeve_two
      t.string :inner_sleeve_two_finish
      t.string :disc_one_base_color
      t.string :barcode
      t.string :barcode_sticker
      t.boolean :download_cards

      t.timestamps
    end
  end
end
