class Grocery < ActiveRecord::Base
  validates :name, :presence => true
  #validates :location, :presence => true
  # validates :saved, :presence => true
  # validates :checked, :presence => true

  def self.saved
   Grocery.where saved: true
  end

  def self.checked
    Grocery.where checked: true
  end

  # def mark_checked
  #   self.update(:checked => true)
  #   redirect_to "/groceries"
  # end

end
