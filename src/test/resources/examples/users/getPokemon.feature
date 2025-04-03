Feature: Obtener la información de un pokemón

Scenario Outline: Validar el nombre, tipo, habilidad y experiencia base del pokemón
  Given url 'https://pokeapi.co/api/v2/pokemon/<id>'
  When method GET
  Then status 200
  * def nombreEsperado = '<nombre>'
  * match response.forms[0].name == nombreEsperado
  * match response.types[0].type.name == '<tipo>'
  * match response.abilities[*].ability.name contains '<habilidad>'
  * match response.base_experience == <experiencia>
  * print '📦 Resultado de:', response.forms[0].name
  * print '🔍 Tipo:', response.types[0].type.name
  * def habilidades = get response.abilities[*].ability.name
  * print '💪 Habilidades:', habilidades
  * print '🎯 Experiencia:', response.base_experience

Examples:
  | id        | nombre      | tipo     | habilidad | experiencia |
  | 1         | bulbasaur   | grass    | overgrow  | 64          |
  | 4         | charmander  | fire     | blaze     | 62          |
  | pikachu   | pikachu     | electric | static    | 112         |
