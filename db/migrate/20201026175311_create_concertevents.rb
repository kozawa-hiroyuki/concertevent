class CreateConcertevents < ActiveRecord::Migration[5.2]
  def change
    create_table :concertevents do |t|
      t.string :name
      t.integer :member
      t.datetime :datetime
      t.text :description

      t.timestamps
    end
  end
end
