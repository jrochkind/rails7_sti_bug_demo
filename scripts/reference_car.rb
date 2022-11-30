begin
  Car

  puts "Made it past with no exception"
rescue StandardError => e
  puts e.inspect
  puts
  puts e.backtrace
end
