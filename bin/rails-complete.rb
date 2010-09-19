#!/usr/bin/env ruby

comp_line = ENV["COMP_LINE"]
exit -1 if comp_line.nil?

parts = comp_line.scan(/\w+/)
exit 0 unless parts.size == 2

require 'rails_complete'

prefix = parts[1]

puts RailsComplete.complete(prefix)
