class CreateUserAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_attributes do |t|
      t.string :name, default: "", null: false
      t.boolean :required, default: false, null: false
      t.string :type, default: "", null: false

      t.timestamps
    end
  end
end
