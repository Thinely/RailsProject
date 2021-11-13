class CreateTenantDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :tenant_details do |t|
      t.integer :user_id
      t.string :name
      t.integer :cid
      t.string :village
      t.string :gewog
      t.string :dzongkhag
      t.integer :total_family_memeber
      t.integer :phone_no

      t.timestamps
    end
  end
end
