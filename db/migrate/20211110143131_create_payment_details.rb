class CreatePaymentDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_details do |t|
      t.integer :tenant_id
      t.float :amount
      t.datetime :payment_date
      t.string :payment_mode
      t.string :payment_month
      t.string :image

      t.timestamps
    end
  end
end
