class List < ActiveRecord::Base
  has_many :items
  attr_accessible :title
  attr_accessible :title, :active, :as => :admin
end
