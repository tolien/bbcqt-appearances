require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "A person can only be at an appearance once" do
    nick = people(:nick)
    one = appearances(:one)
    nick.appearances << one
    assert nick.valid?
    
    nick.appearances << one
    assert_equal 1, nick.appearances.size
  end
end
