require 'test_helper'

class ListTest < ActiveSupport::TestCase

  test "save new item on a list as admin" do
    assert l = List.create({:title => "Inbox", :active => true}, :as => :admin)
    assert_equal 0, l.items.count
    i = l.items.new({:title => "Todo", :active => true}, :as => :admin)
    assert i.save
    assert_equal 1, l.items.count
  end

  test "create item on a list as admin" do
    assert l = List.create({:title => "Work", :active => true}, :as => :admin)
    assert_equal 0, l.items.count
    assert l.items.create({:title => "Params", :active => true}, :as => :admin)
    assert_equal 1, l.items.count
  end

end