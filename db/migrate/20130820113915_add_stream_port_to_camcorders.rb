class AddStreamPortToCamcorders < ActiveRecord::Migration
  def change
  	add_column :camcorders, :stream_port, :integer
  end
end
