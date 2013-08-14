class Camcorder < ActiveRecord::Base
  attr_accessible :description, :name, :thread
  validates_uniqueness_of :thread, :name
  validates_presence_of :thread, :name

  has_many :Records, :dependent => :destroy, :foreign_key => 'thread'
end
