class UpdateNewTenatsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :buildings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
