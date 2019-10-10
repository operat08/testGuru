class Answer < ApplicationRecord
  belongs_to :question
  validates :title, presence: true

  scope :correct_anwer, ->(id) { where(question_id: id, correct: "t") }
end
