class Fund < ActiveRecord::Base

validates :fund_family, :presence => true
validates :fund_name, :presence => true
validates :asset_class, :presence => true

belongs_to :user
has_many :models

# has_many :equity, through => :model

end
