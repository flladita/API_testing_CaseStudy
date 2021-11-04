Feature: Create a user

Background:
  * url 'https://reqres.in/api/'
  * def requestBody = read('classpath:features/payload/createUser.json')
  * def timeValidator = read('classpath:features/helpers/timeValidator.js')

Scenario: Create a user and verify the response body

  Given path 'users'
  And request requestBody
  When method post
  Then status 201

  # Verify the response body
  * match response.name == "morpheus"
  * match response.job == "leader"
  * match response.id == "#present"
  * match response.createdAt == "#? timeValidator(_)"

 


  
  


  