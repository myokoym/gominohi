# -*- coding: utf-8 -*-
require "date"
require "gominohi/sources"

module Gominohi
  class Generator
    class << self
      SOURCES.each do |source|
        define_method(source[:name]) do |begin_date = source[:begin_date],
                                         end_date = source[:end_date],
                                         special_order = source[:special_order]|
          days = days(begin_date,
                      end_date,
                      Marshal.load(Marshal.dump(source[:types])),
                      source[:special_day],
                      special_order)
          source[:areas].collect do |area|
            "#{area},#{days}"
          end
        end
      end

      private
      def days(begin_date, end_date, types, special_day, special_order)
        special_dates = []
        current_date = Date.parse(begin_date)
        end_date = Date.parse(end_date)

        current_special_date = nil
        7.times do
          if current_date.send("#{special_day}?")
            current_special_date = current_date
            break
          end
          current_date += 1
        end
        raise "ぬるぽ" unless current_special_date

        loop do
          break unless current_special_date < end_date
          special_dates << current_special_date
          current_special_date += 7
        end

        special_dates.reject! do |date|
          # TODO: 年末年始は要確認
          /\A(010[1-7])\z/ =~ date.strftime("%m%d")
        end

        special_dates.each_slice(special_order.size) do |dates|
          dates.each_with_index do |date, i|
            type = special_order[i]
            next if type == :leaf and leaf_is_stopped?(date)
            types[type] << date.strftime("%Y%m%d")
          end
        end

        types.values.collect { |group|
          group.join(" ")
        }.join(",")
      end

      def leaf_is_stopped?(date)
        (1..4).include?(date.month) or
          (date.month == 12 and date.day > 10)
      end
    end
  end
end
