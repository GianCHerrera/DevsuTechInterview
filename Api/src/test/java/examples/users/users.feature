Feature: Login & Sign up using Demo Blaze

  Scenario: Create a new user
    Given url baseURL
    And path 'signup'
    * def body = {}
    * set body.username = Java.type('java.time.LocalDateTime').now().toString()
    * set body.password = "secret"
    And request body
    When method post
    Then status 200


  Scenario: Create an existing user
    Given url baseURL
    And path 'signup'
    * def body = {}
    * set body.username = "2024-07-23T17:48:04.923396"
    * set body.password = "secret"
    And request body
    When method post
    Then status 200
    And match response.errorMessage contains 'This user already exist.'

  Scenario: Login successfully
    Given url baseURL
    And path 'login'
    * def body = {}
    * set body.username = "2024-07-23T17:48:04.923396"
    * set body.password = "secret"
    And request body
    When method post
    Then status 200

  Scenario: Login failed on purpose
    Given url baseURL
    And path 'login'
    * def body = {}
    * set body.username = "2024-07-23T17:48:04.923396"
    * set body.password = "not-secret"
    And request body
    When method post
    Then status 200
    And match response.errorMessage contains 'Wrong password'

  