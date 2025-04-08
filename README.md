# 🚀 QA Automation con Karate DSL – Portafolio Pokémon

Este proyecto forma parte de mi portafolio como **QA Automation Engineer**. Utiliza [Karate DSL](https://github.com/karatelabs/karate) para realizar pruebas automatizadas sobre la PokéAPI.

## 🧰 Tecnologías
- 🥋 Karate DSL
- ☕ Java 17
- 🚀 Maven
- ✅ JUnit 5
- 🧠 VS Code

## 🧪 Test automatizado: Información de Pokémons

Este test valida múltiples propiedades de un Pokémon usando datos obtenidos desde [https://pokeapi.com](https://pokeapi.co).

### ✅ Validaciones incluidas:
- Nombre del pokémon (`forms[0].name`)
- Tipo principal (`types[0].type.name`)
- Habilidad esperada (`abilities[*].ability.name`)
- Experiencia base (`base_experience`)

### 📁 Archivo principal:
`src/test/resources/examples/users/getPokemon.feature`


### 🧪 Ejemplo de ejecución:
```bash
mvn test -Dkarate.options="classpath:examples/users/getPokemon.feature"

---

## 📦 Clonar este repositorio (ejecutar en tu máquina local)

```bash
git clone https://github.com/Elohim2020/QA-Automation.git
cd QA-Automation

## Posteriormente ejecuta
mvn test -Dkarate.options="classpath:examples/users/getPokemon.feature"
