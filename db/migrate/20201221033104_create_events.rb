class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :content
      t.integer :ridge_id      , null: false
      t.integer :produce_id    , null: false
      t.references :user       , foreign_key: true

      t.timestamps
    end
  end
end
