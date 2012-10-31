When /^I run "([^\"]*)"$/ do |command|
    system '#{command}"'
    @output=$?.success?
end

Then /^I should see "([^\"]*)" as return code$/ do |string|
    @output.to_s =~ /#{string}/
end

