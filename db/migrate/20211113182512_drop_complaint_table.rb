class DropComplaintTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :complaint_details
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
