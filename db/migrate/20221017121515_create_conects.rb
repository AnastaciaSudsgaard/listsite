class CreateConects < ActiveRecord::Migration[6.1]
  def change
    create_table :conects do |t|
      t.string :name

      t.timestamps
    end
  end
end
