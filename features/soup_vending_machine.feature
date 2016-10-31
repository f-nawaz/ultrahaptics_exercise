@SVM-01
Feature: Selecting a soup flavour
    Scenario: select a soup flavour
     Given that I am on the flavour page
     When I select a soup flavour
     Then I am navigated to the page called amount of soup

@SVM-02
Feature: Selecting the amount of soup
  Background:
    Given that the I have selected a flavour
    And I am on the set amout of soup page

    Scenario: Setting the amount of soup
     When I set the amount of soup to 1 cup
     Then I am nagivated to the page called select cup colour

@SVM-03
Feature: Selecting the cup colour
  Background:
    Given that I am on the cup colour page

    Scenario: Selecting a cup colour
     When I select a cup colour
     Then I am nagivated to the dispensing of the soup page

@SVM-04
Feature: dispensing of the soup
  Background:
    Given that I am on the dispensing of the soup page

    Scenario: dispensing of the soup
     When I press the dispense button
     Then the machine initiates the dispensing of the soup

@SVM-05
Feature: editing choice
    Scenario: Changing the flavour from the amount of soup page
     Given that I am on the amount of soup page
     When I press the back button from the amount of soup page
     Then I am nagivated back to the soup flavour page
     When I select a new flavour
     Then the machine overrides the previous flavour
     And I am navigated to the amount of soup page

    Scenario: Changing cup colour from the dispensing page
     Given that I am on the dispensing page
     When I press the back button from the dispensing page
     Then I am nagivated back to the cup colour page
     When I select a new cup colour
     Then the machine overrides the previous cup colour
     And I am nagivated to the dispensing page

@SVM-06
Feature: Displaying promotional message for the day
    Scenario: displaying promotional message while soup is dispensing
     Given that I am on the dispensing page
     When I press the dispense button
     Then the machine initiates the dispensing of the soup
     And a promotional message of the day is displayed on the screen while the soup is dispensed

@SVM-07
Feature: Displaying a message when the soup is ready
    Scenario: displaying the ready message when the soup is ready
     Given that the dispense button has been pressed from the dispensing page
     When the soup has finished dispensing
     Then a message saying "Soup is ready" is displayed
     And after a set of time the initial menu is available
