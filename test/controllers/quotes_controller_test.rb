require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  
  test "quote show page" do
    quote = Quote.create!(author: 'Justin Joseph', saying: 'I like beds.')
    get :show, id: quote.id
    assert_response :success
  end

  test "quote show page: quote not found" do
    get :show, id: 'wow'
    assert_response :not_found
  end

end
