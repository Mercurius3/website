class Page < ActiveRecord::Base
  attr_accessible :content, :name, :permalink
  validates_uniqueness_of :permalink

  acts_as_list

  def to_param
    permalink
  end

end
