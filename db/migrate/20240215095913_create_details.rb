class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.integer :master_id
      t.text :description

      t.timestamps
    end
  end
end
