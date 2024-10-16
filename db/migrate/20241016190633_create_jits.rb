class CreateJits < ActiveRecord::Migration[7.1]
  def change
    create_table :jits do |t|
      t.string :content
      t.integer :likes

      t.timestamps
    end
  end
end
