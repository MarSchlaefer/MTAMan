class CreateDelays < ActiveRecord::Migration[5.2]
  def change
    create_table :delays do |t|
      t.string :name
      t.string :description
      t.integer :subway_id

      t.timestamps
    end
  end
end
