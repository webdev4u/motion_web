class AddIndexToRecords < ActiveRecord::Migration
  def change
    add_index :records, :thread, :name => 'thread'
  end
end
