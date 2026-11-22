puts "Starting DRC Automation.."

set input "layouts/layout_width_bad.gds"
set report "../reports/tcl_width_test.lyrdb"

exec klayout -b -rd input=$input -rd report=$report -r rules/my_drc.drc

puts "DRC execution completed"

