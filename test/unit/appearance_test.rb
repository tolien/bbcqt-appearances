require 'test_helper'

class AppearanceTest < ActiveSupport::TestCase
  test "Required attributes" do
    appearance = Appearance.new
    assert appearance.invalid?
    assert appearance.errors[:date].any?
    
    appearance.date = '17/1/2013'
    assert appearance.valid?
  end
  
  test "Date validation" do
    appearance = appearances(:one)
    assert appearance.valid?
    
    appearance.date = "29/2/2013"
    assert appearance.invalid?
  end
  
  test "Unique appearances" do
    one = Appearance.create(date: '17/1/2013')
    two = Appearance.create(date: '17/1/2013')
    
    assert one.valid?
    assert two.invalid?
  end
end
