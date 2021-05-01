class User < ApplicationRecord
  has_many :tests
  has_many :results

  def tests_with_level(level)
    Test.joins(:results).where("results.user_id == ?", id).where("level == ?", level)
  end
end
