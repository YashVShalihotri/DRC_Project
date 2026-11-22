set file [open "reports/layout_width_bad.gds.lyrdb" r]
set content [read $file]
close $file
set violations [regexp -all {<item>} $content]
puts "Total Violations: $violations"
