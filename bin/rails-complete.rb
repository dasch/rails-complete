#!/usr/bin/env ruby

comp_line = ENV["COMP_LINE"]
exit -1 if comp_line.nil?

COMMANDS = %w(server generate destroy plugin benchmarker profiler
              console dbconsole application runner)

parts = comp_line.scan(/\w+/)
exit 0 unless parts.size == 2

prefix = parts[1]

puts COMMANDS.select {|cmd| cmd[0, prefix.length] == prefix }
