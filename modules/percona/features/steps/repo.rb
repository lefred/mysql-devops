Then /^there should be a yum repository "([^\"]*)"$/ do |name|
  steps %Q{
    Then there should be a resource "Yumrepo[#{name}]"
    And it should be "enabled"
  }
end

Then /^it should be "(enabled|disabled)"$/ do |bool|
  if bool == "enabled"
    fail unless @resource["enabled"] == "1"
  else
    fail unless @resource["enabled"] == "0"
  end
end

#Then /^there should be a resource "([^\"]*)"$/ do |res|
#  @resource = resource(res)
#  fail "Resource #{res} was not defined" unless @resource
#end

