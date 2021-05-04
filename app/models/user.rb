# frozen_string_literal: true

class User < ApplicationRecord
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :tests, through: :results

  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true
  validates :password, presence: true

  def tests_with_level(level)
    tests.where(level: level)
  end
end
