# Pokémon Rails Explorer

## Author

**Jordan Lerat**

Red River College Polytechnic

Full Stack Web Development Diploma

---

# Project Overview

Pokémon Rails Explorer is a Ruby on Rails web application.

The application imports Pokémon data from multiple external data sources, stores it in a relational database using Active Record, and allows users to browse, search, and explore Pokémon through a responsive web interface.

The project demonstrates Ruby on Rails fundamentals including Active Record models, database migrations, model associations, validations, seed scripts, Bootstrap, searching, pagination, and hierarchical navigation.

---

# Features

- Import Pokémon data from the PokéAPI
- Import Pokémon sprite images from the pokemon.json repository
- Generate realistic reviews using the Faker gem
- Responsive Bootstrap layout
- Pokémon index page
- Individual Pokémon detail pages
- About page
- Search Pokémon by name
- Browse Pokémon by Type
- Pagination using Kaminari
- Active Record associations
- Model validations
- Responsive navigation bar and footer

---

# Data Sources

### PokéAPI

Provides:

- Pokémon names
- Pokédex numbers
- Height
- Weight
- Base Experience
- Types
- Abilities
- Moves

https://pokeapi.co/

---

### pokemon.json

Used to generate sprite image URLs.

https://github.com/fanzeyi/pokemon.json

---

### Faker

Generates:

- Usernames
- Ratings
- Review comments

https://github.com/faker-ruby/faker

---

# Database Models

The application contains the following Active Record models:

- Pokémon
- Type
- Ability
- Move
- Review
- PokemonType
- PokemonAbility
- PokemonMove

These models demonstrate:

- One-to-Many relationships
- Many-to-Many relationships
- Join Tables
- Active Record Associations

---

# Technologies Used

- Ruby
- Ruby on Rails
- SQLite3
- Bootstrap 5
- cssbundling-rails
- Kaminari
- Faker
- Active Record
- HTML5
- ERB
- Git
- GitHub

---

# Project Structure

```
app/
 ├── controllers/
 ├── models/
 ├── views/
 ├── assets/
db/
 ├── migrate/
 ├── schema.rb
 └── seeds.rb
```

---

# Installation

Clone the repository:

```bash
git clone https://github.com/Nyles-Ler/Pokemon_Rails_Project.git
```

Move into the project directory:

```bash
cd Pokemon_Rails_Project
```

Install Ruby dependencies:

```bash
bundle install
```

Install JavaScript packages:

```bash
npm install
```

Create the database:

```bash
rails db:create
```

Run migrations:

```bash
rails db:migrate
```

Seed the database:

```bash
rails db:seed
```

Start the Rails server:

```bash
bin/dev
```

Visit:

```
http://localhost:3000
```

---

# Learning Outcomes

This project demonstrates understanding of:

- Active Record Models
- Database Migrations
- Database Normalization
- One-to-Many Relationships
- Many-to-Many Relationships
- Join Tables
- Model Validations
- Seed Scripts
- JSON APIs
- HTTP Requests
- Ruby Loops
- Bootstrap
- MVC Architecture
- Routing
- Search Functionality
- Pagination
- Responsive Web Design

---

# Screenshots

## Home Page

Will add screenshots

---

## Pokémon Details

Will add screenshots

---

## Browse by Type

Will add screenshots

---

## About Page

Will add screenshots

---