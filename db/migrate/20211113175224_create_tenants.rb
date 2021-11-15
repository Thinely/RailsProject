class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :name
      t.integer :cid
      t.string :village
      t.string :gewog
      t.string :dzongkhag
      t.string :flat_no
      t.integer :total_family_members
      t.references :user, null: false, foreign_key: true
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
