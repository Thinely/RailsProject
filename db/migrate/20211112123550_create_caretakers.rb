class CreateCaretakers < ActiveRecord::Migration[6.1]
  def change
    create_table :caretakers do |t|
      t.string :name
      t.integer :contact_no
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
