module TestPassagesHelper
  def write_success(test_passage)
    if test_passage.passed?
      "<span class=\"success\">#{test_passage.correct_questions}</span><b> Successful</b>".html_safe
    else
      "<span class=\"fail\">#{test_passage.correct_questions}</span><b> not Successful</b>".html_safe
    end
  end
end
