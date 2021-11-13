class AddForeignKeyToTenantDetails < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :id, unique: true
    add_foreign_key :tenant_details, :users, column: :user_id, primary_key: :id
  end
end
