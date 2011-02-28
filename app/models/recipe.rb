class Recipe < ActiveRecord::Base

  belongs_to :user, :dependent => :destroy
  has_many :votes

validates_presence_of:title, :method
validates_uniqueness_of :title
validates_length_of :title, :maximum => 50, :message =>'titles cannot be more than 50 characters' 
end
