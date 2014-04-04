class Grocery < ActiveRecord::Base
  validates :name, :presence => true
  #validates :location, :presence => true
  # validates :saved, :presence => true
  # validates :checked, :presence => true

  def self.saved
   Grocery.where saved: true
  end

end
