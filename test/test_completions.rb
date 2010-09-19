
require 'test/unit'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rails_complete'

class TestCompletions < Test::Unit::TestCase
  def test_simple_completions
    %w(s se ser serv serve server).each do |s|
      assert_equal %w(server), RailsComplete.complete(s)
    end
  end
end
