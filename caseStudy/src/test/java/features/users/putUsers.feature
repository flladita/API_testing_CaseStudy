Feature: Modify a user

Background:
  * url 'https://reqres.in/api/'
  * def requestBody = read('classpath:features/payload/updateUser.json')
  * def timeValidator = read('classpath:features/helpers/timeValidator.js')

Scenario: Modify a user and verify the response body

  Given path 'users' + userId
  And request requestBody
  When method put
  Then status 200

  # Verify the response body
  * match response.name == "maria"
  * match response.job == "teacher"
  * match response.updatedAt == "#? timeValidator(_)"

 


  
  


  