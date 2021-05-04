# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy

  validates :body, presence: true
  validate :validate_answers_count

  scope :correct_answers, -> { joins(:answers).where(answers: { correct: true }) }

  def validate_answers_count
    errors.add(:answers) unless (0..3).include?(answers.count)
  end
end
