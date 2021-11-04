Feature: Delete a user

Background:
  * url 'https://reqres.in/api/'

Scenario: Delete a user

  Given path 'users/' + userId
  When method delete
  Then status 204


  
  


  