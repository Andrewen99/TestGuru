# frozen_string_literal: true

class User < ApplicationRecord
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :tests, through: :results

  def tests_with_level(level)
    Test.joins('JOIN results ON tests.id == results.test_id').where(results: { user_id: id }, tests: { level: level })
  end
end
