class CreateComplaintDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :complaint_details do |t|
      t.integer :tenant_id
      t.string :complaint_details
      t.datetime :complaint_date

      t.timestamps
    end
  end
end
