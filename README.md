# 🚀 QA Automation con Karate DSL – Portafolio Pokémon

Este proyecto forma parte de mi portafolio como **QA Automation Engineer**. Utiliza [Karate DSL](https://github.com/karatelabs/karate) para realizar pruebas automatizadas sobre la PokéAPI y otras APIs públicas.

## 🧰 Tecnologías
- 🥋 Karate DSL
- ☕ Java 17
- 🚀 Maven
- ✅ JUnit 5
- 🧠 VS Code

## 🧪 Test automatizado: Información de Pokémons

Este test valida múltiples propiedades de un Pokémon usando datos obtenidos desde [https://pokeapi.com](https://pokeapi.co).

### ✅ Validaciones incluidas:
✅ Nombre del pokémon
✅ Tipo principal
✅ Habilidad esperada
✅ Experiencia base


### 📁 Archivo principal:
src/test/resources/examples/users/getPokemon.feature

### 🧪 Ejemplo de ejecución:
```bash
mvn test -Dkarate.options="classpath:examples/users/getPokemon.feature"


🧪 Reto #2: Validación de login dinámico con Reqres
Este escenario prueba múltiples casos de login exitoso y fallido usando la API pública de https://reqres.in/api/login.

✔️ Validaciones realizadas:
Código de estado (200 para login válido, 400 para errores)
Verificación de token solo si la respuesta es 200
Impresión de la respuesta para inspección

📁 Archivo:
src/test/resources/examples/users/loginOutline.feature

📄 Ejemplo del Scenario Outline usado:
Examples:
  | email                | password   | status |
  | eve.holt@reqres.in  | cityslicka | 200    |
  | eve.holt@reqres.in  |            | 400    |
  |                     | cityslicka | 400    |
  |                     |            | 400    |

▶️ Ejecutar el test:
mvn test -Dkarate.options="classpath:examples/users/loginOutline.feature"

📦 Clonar este repositorio
git clone https://github.com/Elohim2020/QA-Automation.git
cd QA-Automation

▶️ Ejecutar:
mvn test -Dkarate.options="classpath:examples/users/getPokemon.feature"

