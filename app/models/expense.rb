class Expense < Movement
  before_save :check_negative

  protected

  def check_negative
    self[:amount] = -self[:amount] if self[:amount] > 0
  end
end