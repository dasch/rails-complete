
module RailsComplete
  class << self

    COMMANDS = %w(server generate destroy plugin benchmarker profiler
                  console dbconsole application runner)

    def complete(string)
      string = string.chomp

      COMMANDS.select {|cmd| cmd[0, string.length] == string }
    end

  end
end
