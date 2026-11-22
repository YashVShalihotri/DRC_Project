puts "=============================="
puts "Starting Multi-Layout DRC"
puts "=============================="

set layouts {
layout_clean.gds
layout_width_bad.gds
layout_spacing_bad.gds
}

foreach layout $layouts {

puts "\n Checking layouts/$layout"

set input "layouts/$layout"
set report "../reports/${layout}.lyrdb"

if {[catch {

exec klayout -b -rd input=$input -rd report=$report -r rules/my_drc.drc

} error]} {

puts "ERROR:$error"
continue

}


set file [open "reports/$report" r]

set content [read $file]

close $file

set violations [regexp -all {<item>} $content]

puts "DRC Completed for $layout, No of violation: $violations"

}

puts "All Layers processed!"
