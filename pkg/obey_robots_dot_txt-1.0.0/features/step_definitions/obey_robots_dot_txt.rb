Given /^a url "([^\"]*)"$/ do |arg|
 @url = arg
 @exception
end

When /^I make get request with valid options$/ do  
  begin
  @res = Net::HTTP.get_obeying_robots(URI.parse(@url))
  rescue Net::DisobeyingRobotsTxt
  @exception = Net::DisobeyingRobotsTxt
  end
end

Then /^I see the response$/ do
  @res.should match(/html/)
end

Then /^I see the an exception being raised$/ do
  @exception.should equal(Net::DisobeyingRobotsTxt)
end
