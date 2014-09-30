require "thor"
require "gominohi/generator"
require "gominohi/sources"

module Gominohi
  class Command < Thor
    map "-v" => :version
    map "-g" => :generate

    desc "version", "Show version number."
    def version
      puts Gominohi::VERSION
    end

    desc "generate PLACE BEGIN END [1-4]", "Generate garbage days."
    def generate(place, begin_date, end_date, order=1)
      case order
      when 1
        special_order = [:paper, :not_burn, :paper, :leaf]
      when 2
        special_order = [:leaf, :paper, :not_burn, :paper]
      when 3
        special_order = [:paper, :leaf, :paper, :not_burn]
      when 4
        special_order = [:not_burn, :paper, :leaf, :paper]
      end
      puts Generator.__send__(place, begin_date, end_date, special_order)
    end
  end
end
