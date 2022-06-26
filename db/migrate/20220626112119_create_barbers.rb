class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
    create_table :barbers do |t|
      t.text :name
      t.timestamps
    end

    Barber.create name: 'Bob Smith'
    Barber.create name: 'John Smith'
    Barber.create name: 'Mob Smith'
  end
end
