class CreatePaymentDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_details do |t|
      t.float :amount
      t.datetime :payment_date
      t.string :payment_mode
      t.string :payment_month
      t.string :image
      t.references :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
