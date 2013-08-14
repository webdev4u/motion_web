class Record < ActiveRecord::Base
  attr_accessible :event_timestamp, :file_type, :filename, :frame, :thread

  belongs_to :camcorder, :foreign_key => 'thread'

  self.per_page = 15

  def self.get_video_files
  	where("file_type = 8").order(:id)
  end
end
