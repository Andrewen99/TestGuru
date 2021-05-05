# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_answers_count

  scope :correct, -> { where(correct: true) }

  def validate_answers_count
    errors.add(:answers_count) unless (0..3).include?(question.answers.count)
  end
end
