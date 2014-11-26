class Balance

  def initialize(user)
    @user = user
  end

  def value
    @value ||= @user.movements.sum(:amount) / 100.0
  end
end