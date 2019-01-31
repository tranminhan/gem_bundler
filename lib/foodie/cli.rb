require 'thor'
require 'foodie'

module Foodie
  class CLI < Thor
    desc 'portray ITEM', 'Determine if a piece of food is gross or delicious'
    def portray(name)
      puts Foodie::Food.portray(name)
    end

    desc 'pluralize ITEM', 'Say it professionally as an englishman'
    method_option :word, aliases: '-w'
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end
  end
end
