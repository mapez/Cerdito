class Movement < ActiveRecord::Base
  belongs_to :user
  def  amount
    self[:amount] / 100.0
  end
  @@sum = 0
  def amount= value
    self[:amount] = (value.to_f*100).to_i
  end
end
