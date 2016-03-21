Feature: Shortening a url
  In order to shorten my url
  seeing as I love short urls
  I want to enter my url in a form for shortening

  @javascript
  Scenario: Submitting a long url and clicking on the short url
    Given I am on the homepage
    When I fill in "url" with "https://www.google.co.uk/"
    And click on "Shorten"
    And I should see "Here is your shortened URL"
    When I click on "short-url"
    Then I should see "Google"
