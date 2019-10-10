class Answer < ApplicationRecord
  ANSWER_LIMIT = 4
  belongs_to :question
  validates :title, presence: true
  validate :question_answers

  scope :correct, -> { where(correct: true) }

  private

  def question_answers
    answers_count = Answer.where(question_id: question_id).count
    if answers_count == ANSWER_LIMIT
      errors.add(:question_id, 'Question can not contain more than 4 answers')
    end
  end
end
