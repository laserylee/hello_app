class CreateTesses < ActiveRecord::Migration[5.1]
  def change
    create_table :tesses do |t|
      t.integer :id
      t.integer :value

      t.timestamps
    end
  end
end
