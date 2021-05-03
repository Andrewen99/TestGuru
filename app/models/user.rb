class User < ApplicationRecord

  def tests_with_level(level)
    Test.joins('JOIN results ON tests.id == results.test_id').where(results: {user_id: id}, tests: {level: level})
  end
end
