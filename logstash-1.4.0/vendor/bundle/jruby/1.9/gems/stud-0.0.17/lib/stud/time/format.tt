grammar StudTimeFormat
  rule format
    (time / text)* {
      def compile
        return %Q<lambda do |t|
          return [ 
            #{elements.collect(&:compile).join(",\n          ")} 
          ].join("")
        end>
      end
    }
  end

  rule time
    (
      era 
      / century_of_era
      / year_of_era
      / weekyear
      / week_of_weekyear
      / day_of_week_number
      / day_of_week_text
      / year
      / day_of_year
      / month_of_year
      / day_of_month
      / halfday_of_day
      / hour_of_halfday
      / clockhour_of_halfday
      / hour_of_day
      / clockhour_of_day
      / minute_of_hour
      / second_of_minute
      / fraction_of_second
      / time_zone_text
      / time_zone_offset_or_id
    )
  end

  rule text
    string / symbol
  end

  rule string
    "'" content:[^']* "'" {
      def compile
        if content.text_value.length == 0
          return %Q<"'">
        else
          return %Q<"#{content.text_value}">
        end
      end
    }
  end

  rule symbol
    [^A-Za-z']+ {
      def compile
        return %<"#{text_value}">
      end
    }
  end

  rule quote_char
    # a literal '
    "''" {
      def compile
        return %Q("'")
      end
    }
  end

  rule era 
    "G"+
  end

  rule century_of_era 
    "C"+ {
      def compile
        # TODO(sissel): support eras? I don't really care myself.
        return "AD"
      end
    }
  end

  rule year_of_era
    ( "Y"+ / weekyear / year ) {
      def compile
        # No 'era' support, so year is just year.
        return case text_value.length
          when 2 then "t.year % 100"
          else "t.year"
        end
      end
    }
  end

  rule weekyear
    "x"+ # same as 'year_of_era' used above.
  end

  rule week_of_weekyear
    "w"+ {
      def compile
        return "(t.yday / 7) + 1"
      end
    }
  end

  rule day_of_week_number
    "e"+ {
      def compile
        return "t.wday"
      end
    }
  end

  rule day_of_week_text
    "E"+ {
      def compile
        if text_value.length < 4
          return %Q<t.strftime("%a")> 
        end
        return %Q<t.strftime("%A")>
      end
    }
  end

  rule year
    "y"+ # same as 'year_of_era' used above.
  end

  rule day_of_year
    "D"+ {
      def compile
        return %Q<t.yday>
      end
    }
  end

  rule month_of_year
    "M"+ {
      def compile
        return case text_value.length
          when 1..2 then %Q<sprintf("%0#{text_value.length}d", t.month)>
          when 3 then %Q<t.strftime("%b")>
          else %Q<t.strftime("%B")>
        end
      end
    }
  end

  rule day_of_month
    "d"+ {
      def compile
        return %Q<t.strftime("%0#{text_value.length}d")>
      end
    }
  end

  rule halfday_of_day
    "a"+ {
      def compile
        return %Q<t.strftime("%p")>
      end
    }
  end

  rule hour_of_halfday
    "K"+ {
      def compile
        return %Q<t.strftime("%I")>
      end
    }
  end

  rule clockhour_of_halfday
    "h"+ {
      def compile
        return %Q<sprintf("%0#{text_value.length}d", t.hour / 12)>
      end
    }
  end

  rule hour_of_day
    "H"+ {
      def compile
        return %Q<sprintf("%0#{text_value.length}d", t.hour)>
      end
    }
  end

  rule clockhour_of_day
    "k"+ {
      def compile
        return %Q<sprintf("%0#{text_value.length}d", t.hour + 1)>
      end
    }
  end

  rule minute_of_hour
    "m"+ {
      def compile
        return %Q<sprintf("%0#{text_value.length}d", t.min)>
      end
    }
  end

  rule second_of_minute
    "s"+ {
      def compile
        return %Q<sprintf("%0#{text_value.length}d", t.sec)>
      end
    }
  end

  rule fraction_of_second
    "S"+ {
      def compile
        return %Q<sprintf("%0#{text_value.length}d", t.nsec / (10 ** (9 - #{text_value.length})))>
      end
    }
  end

  rule time_zone_text
    "z"+
  end

  rule time_zone_offset_or_id
    "Z"+ {
      def compile
        return %Q<sprintf("%+05d", t.gmtoff / 36)>
      end
    }
  end
end
