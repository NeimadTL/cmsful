class CreateUserAtrributeValues < ActiveRecord::Migration[6.0]
  def change
    create_table :user_atrribute_values do |t|
      t.integer :user_attribute_id, null: false
      t.integer :user_id, null: false
      t.string :value, default: "", null: false

      t.timestamps
    end
    add_index :user_atrribute_values, :user_attribute_id
    add_index :user_atrribute_values, :user_id
    add_index :user_atrribute_values, [:user_attribute_id, :user_id], unique: true
  end
end
