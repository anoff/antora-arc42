#!/usr/bin/ruby -w

Dir.glob('/developer/anoff/antora-arc42/**')
  .select{ |e| File.file? e }
  .each{ |e| puts e }