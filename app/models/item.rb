class Item < ActiveRecord::Base
  belongs_to :list
  attr_accessible :title
  attr_accessible :title, :active, :as => :admin
end
