Given(/^this cucumber directory$/) do
  step("a cucumber directory 'features'")
end

Given(/^a cucumber directory '(.*)'$/) do |directory|
  Dir.should exist(directory)
  @cucumber = CucumberHelper.new(directory, logger('cucumber_helper'))
  @cucumber.should_not be_nil
end

When(/^the system checks names$/) do
  @cucumber.verify_names
end

Then(/^all the names match the file names$/) do
  unmatched = @cucumber.unmatched
  unmatched.should be_empty, "found #{unmatched.count} unmatched features"
end

When(/^the system checks for extra features$/) do
  @cucumber.check_for_extra_features
end

Then(/^there are no extra features$/) do
  extra = @cucumber.extra
  extra.should be_empty, "found #{extra.count} extra features"
end

When(/^system checks for extra features$/) do
  logger('feature').warn("Feature 'System checks for extra features' not implemented")
end