# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question

  validates_associated :question

  validates :body, presence: true

  scope :correct, -> { where(answers: { correct: true }) }
end
