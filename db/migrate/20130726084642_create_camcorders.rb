class CreateCamcorders < ActiveRecord::Migration
  def change
    create_table :camcorders do |t|
      t.integer :thread
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
