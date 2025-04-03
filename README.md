# 🚀 QA Automation con Karate DSL – Portafolio Pokémon

Este proyecto forma parte de mi portafolio como **QA Automation Engineer**. Utiliza [Karate DSL](https://github.com/karatelabs/karate) para realizar pruebas automatizadas sobre la PokéAPI.

## 🧰 Tecnologías
- 🥋 Karate DSL
- ☕ Java 17
- 🚀 Maven
- ✅ JUnit 5
- 🧠 VS Code

## 🧪 Test automatizado: Información de Pokémons

Este test valida múltiples propiedades de un Pokémon usando datos obtenidos desde [https://pokeapi.co](https://pokeapi.co).

### ✅ Validaciones incluidas:
- Nombre del pokémon (`forms[0].name`)
- Tipo principal (`types[0].type.name`)
- Habilidad esperada (`abilities[*].ability.name`)
- Experiencia base (`base_experience`)

### 📁 Archivo principal:



### 🧪 Ejemplo de ejecución:
```bash
mvn test -Dkarate.options="classpath:examples/users/getPokemon.feature"
