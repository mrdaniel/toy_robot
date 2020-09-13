# ToyRobot

Welcome to the Toy Robot Simulator game!

See usage section below on how to start the game.

Available commands once the game has started:

* PLACE x,y,direction
* MOVE
* RIGHT
* LEFT
* REPORT
* EXIT (to quit the game)

## Installation

Install gems with `bundle install` (currently the only dependency is Rspec).

## Usage

To start the game cd into the project's root directory and start the game with `bin/game`.

If you run into any errors make sure the file can be run as an executable with `chmod +x bin/game`.

`bin/console` will start an IRB session and automatically load the project's environment.

## Tests

Run the entire test suite with `bundle exec rspec`.

Integration test can be found in `spec/game_spec.rb` which has the 3 examples from the Toy Robot Simulator instructions.