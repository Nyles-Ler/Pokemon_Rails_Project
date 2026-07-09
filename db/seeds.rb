# Feature 1.7 - Data Sources
# Imports Pokemon data from PokeAPI, sprite URLs from pokemon.json, and fake reviews using Faker

# Lets ruby open a URL like a file
require "open-uri"
# Lets ruby convert API JSON data into a ruby hash
require "json"
# Lets ruby generate fake data for reviews
require "faker"

# Clear existing data
puts "Clearing existing data..."

# Destroy all records in the correct order to avoid foreign key constraint issues
Review.destroy_all
PokemonMove.destroy_all
PokemonAbility.destroy_all
PokemonType.destroy_all
Move.destroy_all
Ability.destroy_all
Type.destroy_all
Pokemon.destroy_all

puts "Existing data cleared."

puts "Importing data from PokeAPI..."

# Loop through the first 50 Pokémon IDs and fetch their data from the PokeAPI
(1..50).each do |pokemon_id|
  # Build the API URL for the current Pokémon ID
  url = "https://pokeapi.co/api/v2/pokemon/#{pokemon_id}"
  response = URI.open(url).read
  data = JSON.parse(response)

  # Secondary data source for Pokémon images
  # Convert the Pokémon ID to a 3-digit string for the image URL
  # Convert 1 to 001
  image_number = pokemon_id.to_s.rjust(3, "0")

  # Build the image URL using the formatted number
  image_url = "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/#{image_number}.png"

  # Create the Pokémon record
  pokemon = Pokemon.create!(
    name: data["name"].capitalize,
    pokedex_number: data["id"],
    height: data["height"],
    weight: data["weight"],
    base_experience: data["base_experience"] || 0,
    # Use the secondary image URL
    sprite_url: image_url
  )

  # Create associated Type
  data["types"].each do |type_data|
    type_name = type_data["type"]["name"].capitalize

    type = Type.find_or_create_by!(name: type_name)

    PokemonType.create!(
      pokemon: pokemon,
      type: type
    )
  end

  # Create associated Ability
  data["abilities"].each do |ability_data|
    ability_name = ability_data["ability"]["name"].capitalize

    ability = Ability.find_or_create_by!(
      name: ability_name,
      effect: "Effect information"
      )

    PokemonAbility.create!(
      pokemon: pokemon,
      ability: ability
    )
  end

  # Create associated Move
  data["moves"].first(5).each do |move_data|
    move_name = move_data["move"]["name"].capitalize

    move = Move.find_or_create_by!(
      name: move_name,
      power: 0,
      accuracy: 0
    )

    PokemonMove.create!(
      pokemon: pokemon,
      move: move
    )
  end

  # Create 3 fake reviews for each Pokémon
  3.times do
    Review.create!(
      pokemon: pokemon,
      username: Faker::Internet.username,
      rating: rand(1..5),
      comment: Faker::Lorem.sentence(word_count: 12)
    )
  end

  puts "Imported #{pokemon.name}"
end

puts "Seeding completed successfully!"
puts "Total Pokémon imported: #{Pokemon.count}"
puts "Total Types imported: #{Type.count}"
puts "Total Abilities imported: #{Ability.count}"
puts "Total Moves imported: #{Move.count}"
puts "Total Reviews imported: #{Review.count}"
