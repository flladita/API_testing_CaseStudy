Feature: Get a single user

  Background:
    * url 'https://reqres.in/api/'

  Scenario: Get a single user and verify its details

    Given path 'users/' + userId
    When method get
    Then status 200

    # Verify the response body
    * match response.data.id == 2
    * match response.data.email == "janet.weaver@reqres.in"
    * match response.data.first_name == "Janet"
    * match response.data.last_name == "Weaver"
    * match response.data.avatar == "https://reqres.in/img/faces/2-image.jpg"

    * match response.support.url == "https://reqres.in/#support-heading"
    * match response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"

  Scenario: Get a 404 http status code when user is not found

    Given path 'users/23'
    When method get
    Then status 404

    # Verify that the response body is an empty object
    * match response == {}


    
    


    