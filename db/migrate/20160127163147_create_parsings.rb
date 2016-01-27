class CreateParsings < ActiveRecord::Migration
  def change
    create_table :parsings do |t|
      t.text :link

      t.timestamps null: false
    end
  end
end
