# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

voters = Voter.create([
    { name: 'Lewis Cabban' }, 
    { name: 'Matej Hosu' },
    { name: 'Guy Farrelly' },
    { name: 'Jiarong Fan' },
    { name: 'Mingtian Tao' }])
#=begin
#=end
partys = Party.create([
    { name: 'Labour'},
    { name: 'Liberal'},
    { name: 'The Greens'},
    { name: 'Australian Conservatives'},
    { name: 'One Nation'},
    { name: 'Shooters, Fishers and Farmers Party'},
    { name: 'United Australia Party'},
    { name: 'Australian Marijuana Party'}])

candidates = Candidate.create([
    { name: 'Bill Shorten', party_id: 1, rank: 1},
    { name: 'Penny Wong', party_id: 1, rank: 2},
    { name: 'Don Farrell', party_id: 1, rank: 3},
    { name: 'Scott Morrison', party_id: 2, rank: 1},
    { name: 'John Alexander', party_id: 2, rank: 2},
    { name: 'Angie Bell', party_id: 2, rank: 3},
    { name: 'Larissa Waters', party_id: 3, rank: 1},
    { name: 'Janet Rice', party_id: 3, rank: 2},
    { name: 'Sarah Hanson-Young', party_id: 3, rank: 3},
    { name: 'Cory Bernardi', party_id: 4, rank: 1},
    { name: 'Dennis Hood', party_id: 4, rank: 2},
    { name: 'Robert Brokenshire', party_id: 4, rank: 3},
    { name: 'Pauline Hanson', party_id: 5, rank: 1},
    { name: 'Stephen Andrew', party_id: 5, rank: 2},
    { name: 'Malcolm Roberts', party_id: 5, rank: 3},
    { name: 'Mark Banasiak', party_id: 6, rank: 1},
    { name: 'Philip Donato', party_id: 6, rank: 2},
    { name: 'Helen Dalton', party_id: 6, rank: 3},
    { name: 'Clive Palmer', party_id: 7, rank: 1},
    { name: 'Peter Walter', party_id: 7, rank: 2},
    { name: 'Brian Burston', party_id: 7, rank: 3},
    { name: 'JJ McRoach', party_id: 8, rank: 1},
    { name: 'Michael Balderstone', party_id: 8, rank: 2},
    { name: 'Andrew Kavasilas', party_id: 8, rank: 3}])