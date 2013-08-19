class Record < ActiveRecord::Base
  attr_accessible :event_timestamp, :file_type, :filename, :frame, :thread

  belongs_to :camcorder, :foreign_key => 'thread'

  self.per_page = 15

  def self.get_video_files
  	where("file_type = 8").order(:id)
  end

  def self.clean_old_records (days = 21)
  	clean_sql = "DELETE FROM records WHERE event_timestamp < TIMESTAMP 'NOW()' - INTERVAL '#{days} days'"
  	ActiveRecord::Base.connection.execute clean_sql
  end
end
