
require 'test/unit'

BIN_DIR = File.join(File.dirname(__FILE__), '..', 'bin')

COMMANDS = %w(server generate destroy plugin benchmarker profiler
              new console dbconsole application runner --help -h --version -v )

class TestExecutable < Test::Unit::TestCase
  def test_should_complete_commands
    assert_equal %w(server), complete("ser")
    assert_equal %w(plugin profiler), complete("p").sort
  end

  def test_should_complete_flags
    assert_equal %w(--help --version), complete('--').sort
  end

  def test_should_list_commands_when_no_prefix_is_given
    assert_equal COMMANDS.sort, complete("").sort
  end

  def test_should_not_list_command_if_prefix_already_given
    assert_equal [], complete('new')
  end

  def test_should_list_flags_after_command_provided
    assert_equal %w(--skip-gemfile --skip-git), complete('new --skip-g').sort
  end

  protected

  def complete(prefix)
    cmd = %(COMP_LINE="rails #{prefix}" #{BIN_DIR}/rails-complete)
    `#{cmd}`.split("\n")
  end
end
