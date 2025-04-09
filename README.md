# 🚀 QA Automation con Karate DSL – Portafolio Pokémon

Este proyecto forma parte de mi portafolio como **QA Automation Engineer**. Utiliza [Karate DSL](https://github.com/karatelabs/karate) para realizar pruebas automatizadas sobre la PokéAPI y otras APIs públicas.

---

## 📚 Contenido

- [🧰 Tecnologías](#-tecnologías)
- [🧪 Reto 1: Test de Pokémons](#-reto-1-test-de-pokémons)
- [🧪 Reto 2: Login dinámico con Reqres](#-reto-2-login-dinámico-con-reqres)
- [📦 Clonar este repositorio](#-clonar-este-repositorio)
- [⭐ Créditos y contacto](#-créditos-y-contacto)

---

## 🧰 Tecnologías

- 🥋 Karate DSL
- ☕ Java 17
- 🚀 Maven
- ✅ JUnit 5
- 🧠 VS Code

---

## 🧪 Reto 1: Test de Pokémons
Este test valida múltiples propiedades de un Pokémon usando datos obtenidos desde [https://pokeapi.co](https://pokeapi.co).

### ✅ Validaciones incluidas:
- Nombre del pokémon (`forms[0].name`)
- Tipo principal (`types[0].type.name`)
- Habilidad esperada (`abilities[*].ability.name`)
- Experiencia base (`base_experience`)

### 📁 Archivo:
src/test/resources/examples/users/getPokemon.feature

### ▶️ Ejecutar:
```bash
mvn test -Dkarate.options="classpath:examples/users/getPokemon.feature"
```

## 🧪 Reto 2: Login dinámico con Reqres
Este escenario prueba múltiples casos de login exitoso y fallido usando la API pública de Reqres.

### ✔️ Validaciones realizadas:
-Código de estado (200 para login válido, 400 para errores)
-Verificación de token solo si la respuesta es 200
-Impresión de la respuesta para inspección

### 📁 Archivo:
src/test/resources/examples/users/loginOutline.feature

Examples:
  | email               | password   | status |
  | eve.holt@reqres.in  | cityslicka | 200    |
  | eve.holt@reqres.in  |            | 400    |
  |                     | cityslicka | 400    |
  |                     |            | 400    |

▶️ Ejecutar:
```bash
mvn test -Dkarate.options="classpath:examples/users/loginOutline.feature"
```

📦 Clonar este repositorio
Para ejecutar el proyecto en tu máquina local:
```bash
mvn test -Dkarate.options="classpath:examples/[ruta-del-feature]"
```

⭐ Créditos y contacto
Este proyecto fue desarrollado por @Elohim2020 como parte de su portafolio profesional de QA Automation.
Dale ⭐ al repositorio si te resultó útil y compártelo con otros testers.

🔗 GitHub: github.com/Elohim2020