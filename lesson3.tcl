proc check_drc {layout violations} {

puts "Checking $layout"

if {$violations ==0} { 
puts "Result: PASS"
} else { 
puts "RESULT: FAIL ($violations violations)"
}
}

check_drc "layout_clean.gds" 0
check_drc "layout_width_bad.gds" 1 
check_drc "layout_spacing_bad.gds" 2