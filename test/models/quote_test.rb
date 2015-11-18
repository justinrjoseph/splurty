require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique tag" do
    quote = FactoryGirl.create(:quote, author: 'Justin Joseph')
    expected_tag = 'JJ#' + quote.id.to_s
    actual_tag = quote.unique_tag
    assert_equal expected_tag, actual_tag
  end

end
