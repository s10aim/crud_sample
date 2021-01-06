class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
