class DropPaymentTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :payment_details
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
