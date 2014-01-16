# -*- coding: utf-8 -*-

require 'plist'

module Iterm2putty
  class PuttyColor
    def self.create_with_plist(plist)
      result = Plist::parse_xml(plist)
      if result.nil?
        raise RuntimeError, "cannot load plist: #{plist}"
      end
      iterm2 = Iterm2Color.new(result)
      putty = PuttyColor.create_with_iterm2(iterm2)
      putty
    end

    def self.create_with_iterm2(iterm2)
      putty = PuttyColor.new
      putty.colour_0 = iterm2.foreground
      putty.colour_1 = iterm2.bold
      putty.colour_2 = iterm2.background
      putty.colour_3 = iterm2.background
      putty.colour_4 = iterm2.cursor_text
      putty.colour_5 = iterm2.cursor
      putty.colour_6 = iterm2.ansi_0
      putty.colour_7 = iterm2.ansi_8
      putty.colour_8 = iterm2.ansi_1
      putty.colour_9 = iterm2.ansi_9
      putty.colour_10 = iterm2.ansi_2
      putty.colour_11 = iterm2.ansi_10
      putty.colour_12 = iterm2.ansi_3
      putty.colour_13 = iterm2.ansi_11
      putty.colour_14 = iterm2.ansi_4
      putty.colour_15 = iterm2.ansi_12
      putty.colour_16 = iterm2.ansi_5
      putty.colour_17 = iterm2.ansi_13
      putty.colour_18 = iterm2.ansi_6
      putty.colour_19 = iterm2.ansi_14
      putty.colour_20 = iterm2.ansi_7
      putty.colour_21 = iterm2.ansi_15
      putty
    end

    def initialize

    end

    attr_accessor :colour_0, :colour_1, :colour_2, :colour_3, :colour_4, :colour_5, :colour_6, :colour_7,
                  :colour_8, :colour_9, :colour_10, :colour_11, :colour_12, :colour_13, :colour_14, :colour_15,
                  :colour_16, :colour_17, :colour_18, :colour_19, :colour_20, :colour_21

    def dump
      str = "colour_0=#{colour_0}\n"
      str << "colour_1=#{colour_1}\n"
      str << "colour_2=#{colour_2}\n"
      str << "colour_3=#{colour_3}\n"
      str << "colour_4=#{colour_4}\n"
      str << "colour_5=#{colour_5}\n"
      str << "colour_6=#{colour_6}\n"
      str << "colour_7=#{colour_7}\n"
      str << "colour_8=#{colour_8}\n"
      str << "colour_9=#{colour_9}\n"
      str << "colour_10=#{colour_10}\n"
      str << "colour_11=#{colour_11}\n"
      str << "colour_12=#{colour_12}\n"
      str << "colour_13=#{colour_13}\n"
      str << "colour_14=#{colour_14}\n"
      str << "colour_15=#{colour_15}\n"
      str << "colour_16=#{colour_16}\n"
      str << "colour_17=#{colour_17}\n"
      str << "colour_18=#{colour_18}\n"
      str << "colour_19=#{colour_19}\n"
      str << "colour_20=#{colour_20}\n"
      str << "colour_21=#{colour_21}\n"
      print str
    end

    def to_reg(session_name="sample")
      str = "Windows Registry Editor Version 5.00\n"
      str << "\n"
      str << "[HKEY_CURRENT_USER\\Software\\SimonTatham\\PuTTY\\Sessions\\#{session_name}]\n"
      str << "\"Colour0\"=\"#{colour_0}\"\n"
      str << "\"Colour1\"=\"#{colour_1}\"\n"
      str << "\"Colour2\"=\"#{colour_2}\"\n"
      str << "\"Colour3\"=\"#{colour_3}\"\n"
      str << "\"Colour4\"=\"#{colour_4}\"\n"
      str << "\"Colour5\"=\"#{colour_5}\"\n"
      str << "\"Colour6\"=\"#{colour_6}\"\n"
      str << "\"Colour7\"=\"#{colour_7}\"\n"
      str << "\"Colour8\"=\"#{colour_8}\"\n"
      str << "\"Colour9\"=\"#{colour_9}\"\n"
      str << "\"Colour10\"=\"#{colour_10}\"\n"
      str << "\"Colour11\"=\"#{colour_11}\"\n"
      str << "\"Colour12\"=\"#{colour_12}\"\n"
      str << "\"Colour13\"=\"#{colour_13}\"\n"
      str << "\"Colour14\"=\"#{colour_14}\"\n"
      str << "\"Colour15\"=\"#{colour_15}\"\n"
      str << "\"Colour16\"=\"#{colour_16}\"\n"
      str << "\"Colour17\"=\"#{colour_17}\"\n"
      str << "\"Colour18\"=\"#{colour_18}\"\n"
      str << "\"Colour19\"=\"#{colour_19}\"\n"
      str << "\"Colour20\"=\"#{colour_20}\"\n"
      str << "\"Colour21\"=\"#{colour_21}\"\n"
      str
    end
  end
end
