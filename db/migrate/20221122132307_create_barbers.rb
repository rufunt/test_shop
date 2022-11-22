class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
    create_table :barbers do |t|
      t.text :name
   
      t.timestamps
    end
  end
end
