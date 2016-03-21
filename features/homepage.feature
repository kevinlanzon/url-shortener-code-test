Feature: Shortening a url
  In order to shorten my url
  seeing as I love short urls
  I want to enter my url in a form for shortening

  Scenario: Submitting a long url
    Given I am on the homepage
    When I fill in "url" with "https://www.google.co.uk/"
    And click on "submit"
    Then I should see "Here is your shortened URL"
