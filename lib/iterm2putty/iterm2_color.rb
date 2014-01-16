# -*- coding: utf-8 -*-

module Iterm2putty
  class Iterm2Color
    def initialize(data)
      @data = data
    end

    def to_rgb_value(value)
      (value * 255).round.to_i
    end

    def to_rgb(key)
      red = to_rgb_value(@data[key]['Red Component'])
      green = to_rgb_value(@data[key]['Green Component'])
      blue = to_rgb_value(@data[key]['Blue Component'])
      "#{red},#{green},#{blue}"
    end

    def ansi_0
      to_rgb('Ansi 0 Color')
    end

    def ansi_1
      to_rgb('Ansi 1 Color')
    end

    def ansi_10
      to_rgb('Ansi 10 Color')
    end

    def ansi_11
      to_rgb('Ansi 11 Color')
    end

    def ansi_12
      to_rgb('Ansi 12 Color')
    end

    def ansi_13
      to_rgb('Ansi 13 Color')
    end

    def ansi_14
      to_rgb('Ansi 14 Color')
    end

    def ansi_15
      to_rgb('Ansi 15 Color')
    end

    def ansi_2
      to_rgb('Ansi 2 Color')
    end

    def ansi_3
      to_rgb('Ansi 3 Color')
    end

    def ansi_4
      to_rgb('Ansi 4 Color')
    end

    def ansi_5
      to_rgb('Ansi 5 Color')
    end

    def ansi_6
      to_rgb('Ansi 6 Color')
    end

    def ansi_7
      to_rgb('Ansi 7 Color')
    end

    def ansi_8
      to_rgb('Ansi 8 Color')
    end

    def ansi_9
      to_rgb('Ansi 9 Color')
    end

    def background
      to_rgb('Background Color')
    end

    def bold
      to_rgb('Bold Color')
    end

    def cursor
      to_rgb('Cursor Color')
    end
    def cursor_text
      to_rgb('Cursor Text Color')
    end

    def foreground
      to_rgb('Foreground Color')
    end

    def selected_text
      to_rgb('Selected Text Color')
    end

    def selection
      to_rgb('Selection Color')
    end

    def dump
      str = "ansi_0=#{ansi_0}\n"
      str << "ansi_1=#{ansi_1}\n"
      str << "ansi_10=#{ansi_10}\n"
      str << "ansi_11=#{ansi_11}\n"
      str << "ansi_12=#{ansi_12}\n"
      str << "ansi_13=#{ansi_13}\n"
      str << "ansi_14=#{ansi_14}\n"
      str << "ansi_15=#{ansi_15}\n"
      str << "ansi_2=#{ansi_2}\n"
      str << "ansi_3=#{ansi_3}\n"
      str << "ansi_4=#{ansi_4}\n"
      str << "ansi_5=#{ansi_5}\n"
      str << "ansi_6=#{ansi_6}\n"
      str << "ansi_7=#{ansi_7}\n"
      str << "ansi_8=#{ansi_8}\n"
      str << "ansi_9=#{ansi_9}\n"
      str << "background=#{background}\n"
      str << "bold=#{bold}\n"
      str << "cursor=#{cursor}\n"
      str << "cursor_text=#{cursor_text}\n"
      str << "foreground=#{foreground}\n"
      str << "selected_text=#{selected_text}\n"
      str << "selection=#{selection}\n"

      print str
    end
  end
end
