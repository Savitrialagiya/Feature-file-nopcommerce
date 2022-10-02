Feature: Bookcategory
  Background: User should be able to see Homepage
    Given User enter URL 'http://demo.nopcommerce.com/' in browser
    And   User click on given URL
    Then  User is on homepage

  Scenario Outline: User should be able to see topmenu tabs on homepage with categories
    When User is on homepage
    Then User should be able to see top menu tabs with "<categories>"
    Examples:
    |Categories      |
    |Computers       |
    |Electronics     |
    |Apparel         |
    |Digital downloas|
    |Books           |
    |Jewellery       |
    |Gift cards      |

  Scenario Outline: User should be able to see book page with filters
    When User select book category from top menu tabs on Home page
    Then User should be able to navigated to book category
    And  User should be able to see "<filters>"
    Examples:
    |Filters   |
    |Short by  |
    |Display   |
    |Grid      |
    |List tab  |

  Scenario Outline: User should be able to see list of terms of each filter
    Given User is on Book page
    When User click on "<filters>"
    Then User should be able to see "<list>" in dropdown menu
    Examples:
    |Filters   |List                                                                  |
    |Sort by   | Name: AtoZ, Name:ZtoA, Price:low to high,Price:high to low,Created on|
    |Display   | 3,6,9                                                                |

  Scenario Outline: User should be able to choose any filter option with specific result
    Given User is on book page
    When  User click on "<filter>"
    And   User click on "<option>"
    Then  User should be able to choose any filter option from the list
    And   User should be able to see "<result>"
    Examples:
    |Filter    |   Option             | result                                                           |
    |Sort by   |  Name:A to Z         | sorted product with the product name in alphabetial order A to Z |
    |Sort by   |  Name:Z to A         | sorted product with the product name in alphabetial order Z to A |
    |Sort by   |  Price: low to high  | sorted product with the price in descending order                |
    |Sort by   |  Price: high to low  | sorted product with the price in ascending order                 |
    |Sort by   |  Created on          | Recently added product should be show first                      |
    |Display   |  3                   | 3 products in a page                                             |
    |Display   |  6                   | 6 products in a page                                             |
    |Display   |  9                   | 9 products in a page                                             |

    Scenario Outline: User should be able to see product display format according display format type as per given picture in srs document
      Given User is on book page
      When  User click on "<display format icon>"
      Then  User should be able to see product display format according display format type as per given picture in srs document
      Examples:
      | Display format icon |
      | Grid                |
      | List                |
