class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.text :name
      t.text :room
      t.datetime :in_time
      t.datetime :out_time

      t.timestamps
    end
  end
end
