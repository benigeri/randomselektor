class Entry < ActiveRecord::Base
  attr_accessible :name, :selected
  validates_presence_of :name
end
