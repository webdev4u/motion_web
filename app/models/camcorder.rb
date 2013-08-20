class Camcorder < ActiveRecord::Base
  attr_accessible :description, :name, :thread, :stream_port
  validates_uniqueness_of :thread, :name, :stream_port
  validates_presence_of :thread, :name, :stream_port

  has_many :Records, :dependent => :destroy, :foreign_key => 'thread'
end
