class CreateAreacards < ActiveRecord::Migration[5.1]
  def change
    create_table :areacards do |t|
      t.string :cardnumber
      t.string :cardmin
      t.string :cardmax

      t.timestamps
    end
  end
end
