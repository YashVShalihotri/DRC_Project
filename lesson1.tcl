set project "DRC_Project"

set layouts {
layout_clean.gds
layout_width_bad.gds
layout_spacing_bad.gds
}

set violations {0 1 2} 

foreach layout $layouts count $violations {
puts " Checking: $layout"

if {$count == 0} { 
puts "RESULT: PASS"	
} else { 
puts "Result: FAIL ($count violations)"
}

}

puts "DRC Automation completed."