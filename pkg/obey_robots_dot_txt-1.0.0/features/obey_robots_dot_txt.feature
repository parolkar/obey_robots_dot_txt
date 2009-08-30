Feature:  Obey robots.txt rules

  As user of Net::HTTP
  I want to be able to supply options to get & post methods
  So that it can validate urls as per rules defined in robots.txt of the target domain.
    
  Scenario: make get request to allowed url
    Given a url "http://google.com"
    When I make get request with valid options
    Then I see the response

  Scenario: make get request to disallowed url
	Given a url "http://google.com/search"
	When I make get request with valid options
	Then I see the an exception being raised
    