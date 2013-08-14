class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :thread
      t.string :filename
      t.integer :frame
      t.integer :file_type
      t.timestamp :event_timestamp

      t.timestamps
    end
  end
end
