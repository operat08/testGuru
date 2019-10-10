class Question < ApplicationRecord
  belongs_to :test
  has_many :answers, dependent: :destroy
  validates :title, presence: true
  validate :question_answers

  scope :correct_answer, ->(id) { Answer.joins(:question).where(answers: { correct: "t", question_id: id })  }

  def question_answers
    answers_count = Answer.joins(:question).where(answers: { question_id: id }).count
    errors.add(:answers) if answers_count < 1 || answers_count > 4
  end
end
