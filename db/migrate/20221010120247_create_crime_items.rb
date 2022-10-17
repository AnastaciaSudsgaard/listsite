class CreateCrimeItems < ActiveRecord::Migration[6.1]
  def change
    create_table :crime_items do |t|
      t.text :description
      t.boolean :completed
      t.datetime :completed_at
      t.references :crime_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
