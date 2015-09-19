require "thor"
require "gominohi/generator"
require "gominohi/sources"
require "gominohi/version"

module Gominohi
  class Command < Thor
    map "-v" => :version
    map "-g" => :generate

    desc "version", "Show version number."
    def version
      puts Gominohi::VERSION
    end

    desc "generate PLACE BEGIN END [1-4]", "Generate garbage days."
    def generate(place, begin_date, end_date)
      puts Generator.__send__(place, begin_date, end_date)
    end
  end
end
