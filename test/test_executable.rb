
require 'test/unit'

BIN_DIR = File.join(File.dirname(__FILE__), '..', 'bin')

COMMANDS = %w(server generate destroy plugin benchmarker profiler
              console dbconsole application runner)

class TestExecutable < Test::Unit::TestCase
  def test_should_complete_commands
    assert_equal %w(server), complete("ser")
    assert_equal %w(plugin profiler), complete("p")
  end

  def test_should_list_commands_when_no_prefix_is_given
    assert_equal COMMANDS.sort, complete("").sort
  end

  protected

  def complete(prefix)
    cmd = %(COMP_LINE="rails #{prefix}" #{BIN_DIR}/rails-complete)
    `#{cmd}`.split("\n")
  end
end