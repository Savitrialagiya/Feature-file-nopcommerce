Feature: nopcommerce's topmenu acceptance criteria
  as a user, I would like to check acceptance criteria of nopcommerce topmenu
  Background: User is on given URl
    When User type URL https://demo.nopcommerce.com
    And  User click on enter button
    Then User is on given URL

  Scenario: Verify user can nevigate to 'book category'
    When User is on given URL
    And  User click on Books tab on top menu
    Then User is nevigated to book category page

  Scenario: Verify that user can see the 'book category page' with filters and list of products
    When User is on given URL
    And  User click on books tab on top menu
    And  User check filters and list tab
    Then Book category page is displayed with filters and list of products

  Scenario: Verify that user can see 'sort by' filter on book category page
    Given User is on Book category page
    When  User is on Book category page
    And   User Check 'Sort by'filter is present
    Then  'Sort by'filter is available on book category page

  Scenario: Verify that user can see 'Display' filter on book category page
    Given User is on Book category page
    When  User is on Book category page
    And   User Check 'Display'filter is present
    Then  'Display'filter is available on book category page

  Scenario: Verify that user can see 'Grid' tab on book category page
    Given User is on Book category page
    When  User is on Book category page
    And   User Check 'Grid'tab is present
    Then  'Grid' tab is available on book category page

  Scenario: Verify that user can see 'List' tab on book category page
    Given User is on Book category page
    When  User is on Book category page
    And   User Check 'List'tab is present
    Then  'List' tab is available on book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'sort by'Filter
    Given User is on Book category page
    When  User is on Book category page
    And   User click on 'sort by' filter
    And   User check that 'Name: A to Z' selection is present in 'sort by' filter
    Then  'Name: A to Z' selection is present in 'sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'sort by'Filter
    Given User is on Book category page
    When  User is on Book category page
    And   User click on 'sort by' filter
    And   User check that 'Name: A to Z' is first in order
    Then  'Name: A to Z' is first option in 'sort by'Filter

  Scenario: Verify that user can see 'Name: A to Z'filter is functioning as expected(Note: products are filtered in alphabetical order)
    Given User is on Book category page
    When  User is on Book category page
    And   User click on 'sort by' filter
    And   Select 'Name: A to Z' filter
    Then  All products are displayed in alphabetical order.
