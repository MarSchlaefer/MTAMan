class CreateSubways < ActiveRecord::Migration[5.2]
  def change
    create_table :subways do |t|
      t.string :letter
      t.string :color

      t.timestamps
    end
  end
end
