class CreateAreanumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :areanumbers do |t|
      t.string :headsym
      t.string :headsymname

      t.timestamps
    end
  end
end
