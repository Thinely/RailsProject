class DropBuildingDetails < ActiveRecord::Migration[6.1]
  def up
    drop_table :building_details
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
