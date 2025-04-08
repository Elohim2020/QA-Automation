Feature: Validar el login de varios usuarios

Scenario Outline: Login con distintos datos

  Given url 'https://reqres.in/api/login'
  And request
    """
    {
      "email": "<email>",
      "password": "<password>"
    }
    """
  When method POST
  Then status <status>

  # Validar que el token exista si el status es 200
  * if (status == 200) karate.match(response.token, '#string')

  * print '📩 Resultado:', response

Examples:
  | email                 | password   | status |
  | eve.holt@reqres.in   | cityslicka | 200    |
  | eve.holt@reqres.in   |            | 400    |
  |                      | cityslicka | 400    |
  |                      |            | 400    |
