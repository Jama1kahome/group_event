class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
