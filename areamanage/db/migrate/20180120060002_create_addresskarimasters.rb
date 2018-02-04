class CreateAddresskarimasters < ActiveRecord::Migration[5.1]
  def change
    create_table :addresskarimasters do |t|
      t.string :cardnumber
      t.string :branchnumber
      t.string :psnlarea
      t.string :asgnministrator
      t.string :asgnlimit
      t.string :oldcardnumber
      t.string :buildingname
      t.string :roomnumber
      t.string :unauthorized
      t.string :servicestyle
      t.string :officename
      t.string :fstname
      t.string :lstname
      t.string :kananame
      t.string :living
      t.string :phone
      t.string :household
      t.string :gender
      t.string :handicapped
      t.string :homeday
      t.string :hometime
      t.text :memo
      t.date :newtenantdate
      t.string :vpname
      t.date :vpdate
      t.string :dltsign
      t.date :dltdate
      t.string :point

      t.timestamps
    end
  end
end
