require 'thor'
require 'foodie'
require 'foodie/generators/recipe'

module Foodie
  class CLI < Thor
    desc 'portray ITEM', 'Determine if a piece of food is gross or delicious'
    def portray(name)
      puts Foodie::Food.portray(name)
    end

    desc 'pluralize ITEM', 'Say it professionally as an englishman'
    method_option :word, type: :string, aliases: '-w'
    method_option :uppercase, type: :boolean, default: false
    def pluralize
      if options[:uppercase]
        puts Foodie::Food.pluralize(options[:word].upcase)
      else
        puts Foodie::Food.pluralize(options[:word])
      end
    end

    desc 'recipe', 'Generate a recipe scaffold'
    def recipe(group, name)
      Foodie::Generators::Recipe.start([group, name])
    end
  end
end
