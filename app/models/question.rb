# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy

  validates :body, presence: true

  scope :correct_answers, -> { joins(:answers).where(answers: { correct: true }) }
end
