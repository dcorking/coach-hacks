require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @question = questions(:one)
  # end

  test "accepts a question" do
    post questions_url, params: { question: {  } }, as: :json

    assert_response 200
  end
end
