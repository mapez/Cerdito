class Saving

  attr_reader :user

  def initialize user
    @user = user
  end

  def cumulative_savings
    acc = 0

    savings_per_week.map do |_,v|
      acc += (v || 0)/100.0
    end
  end

  def savings_per_week
    user.movements.group("date(created_at)").sum(:amount)
  end
end