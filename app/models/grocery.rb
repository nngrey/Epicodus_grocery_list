class Grocery < ActiveRecord::Base
  validates :name, :presence => true
  validates :location, :presence => true
  validates :saved, :presence => true
  validates :checked, :presence => true
end
