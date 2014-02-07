require 'source/cucumber_helper'

Given(/^a feature '(.*)'$/) do |name|
  @feature_name = name
end

When(/^utility asks to transform feature name$/) do
  @feature_filename = CucumberHelper.filename(@feature_name)
end

Then(/^utility gets a file name '(.*)'$/) do |name|
  @feature_filename.should_not be_empty
  @feature_filename.should == name
end

Given(/^a file name '(.*)'$/) do |name|
  @filename=name
end

When(/^utility asks to transform file name$/) do
  @feature_name = CucumberHelper.feature_name(@filename)
end

Then(/^utility gets a feature name '(.*)'$/) do |feature|
  @feature_name.should == feature
end


When(/^a utility asks for a list of features$/) do
  @features = @cucumber.features unless defined?(features) and @features
  @features.should_not be_nil
end

Then(/^the system returns the (\d+) features$/) do |count|
  @features.should have(count).features
end

Then(/^the system returns that there are (\d+) matched features$/) do |count|
  @cucumber.matched.should have(count.to_i).matches
end

Then(/^the system returns that there are (\d+) unmatched features$/) do |count|
  @cucumber.unmatched.should have(count.to_i).mismatches
end

