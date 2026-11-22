puts "Starting Automation"

set result [exec klayout -b]
puts $result
puts "Automation Finished"
