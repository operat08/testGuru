module TestPassagesHelper
  def current_question(test_passage)
    current_id = test_passage.current_question.id
    test_passage.test.questions.where('id < ?', current_id).count + 1
  end

  def pass_test?(test_passage)
    correct = test_passage.correct_questions
    questions = test_passage.test.questions.count
    total = correct / questions.to_f * 100
    if total >= 85
      true
    else
      false
    end
  end
end
