class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.integer :user

      t.timestamps
    end
  end
end
