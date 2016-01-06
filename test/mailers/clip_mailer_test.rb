require 'test_helper'

class ClipMailerTest < ActionMailer::TestCase
  test "new_clip" do
    mail = ClipMailer.new_clip
    assert_equal "New clip", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
