class Model < ActiveRecord::Base

  validates :currencies, :presence => true, :numericality => { :only_integer => true }
  validates :commodities, :presence => true, :numericality => { :only_integer => true }
  validates :fixed_income, :presence => true, :numericality => { :only_integer => true }
  validates :equity, :presence => true, :numericality => { :only_integer => true }
  validates :time_period, :presence => true
  validates_inclusion_of :time_period, :in => [3, 5, 10]
  validates :fund_id, :presence => true

belongs_to :fund

end
