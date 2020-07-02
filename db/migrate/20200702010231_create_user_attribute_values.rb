class CreateUserAttributeValues < ActiveRecord::Migration[6.0]
  def change
    create_table :user_attribute_values do |t|
      t.integer :user_attribute_id, null: false
      t.integer :user_id, null: false
      t.string :value, default: "", null: false

      t.timestamps
    end
    add_index :user_attribute_values, :user_attribute_id
    add_index :user_attribute_values, :user_id
    add_index :user_attribute_values, [:user_attribute_id, :user_id], unique: true
  end
end
