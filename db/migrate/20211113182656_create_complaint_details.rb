class CreateComplaintDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :complaint_details do |t|
      t.string :complaint_details
      t.datetime :complaint_date
      t.references :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
