using System;

namespace rubyrem.clone
{
	/// <summary>
	///Press button
   lgremote press volume_up
   lgremote press volume_down

Move mouse by 1 increment
   lgremote mouse up
   lgremote mouse down
   lgremote mouse left
   lgremote mouse right

Move mouse by +- {x,y} pixels
   lgremote mouse -25 0

Interactive text entry (tab updates)
   lgremote keyboard

Non-interactive text entry
   lgremote keyboard text_string
	/// </summary>
	public class RubyRemote
	{
		public static int mouse_move_start_incr = 15   ;//# pixels
		public static int mouse_incr_multiplier = 1.27;// # factor
		public static int mouse_incr_reset_thr = 1.5;//  # seconds
//		#!/usr/bin/env ruby
//# 
//# lgremote
//#   A command line program to control for LG "Smart" TVs.
//#   LV5500,LW5500,LW6500,LW7700,LW9800
//#   LV550x,LW550x,LW650x,LW770x,LW980x
//
//# Mouse settings
//$mouse_move_start_incr = 15   # pixels
//$mouse_incr_multiplier = 1.27 # factor
//$mouse_incr_reset_thr  = 1.5  # seconds
//
//# LgRemote config directory
//$lgremote_config = "#{ENV["HOME"]}/.lgremote"
//
//# = MIT License
//# 
//# Copyright (c) 2011 Dreamcat4
//# 
//# Permission is hereby granted, free of charge, to any person obtaining
//# a copy of this software and associated documentation files (the
//# "Software"), to deal in the Software without restriction, including
//# without limitation the rights to use, copy, modify, merge, publish,
//# distribute, sublicense, and/or sell copies of the Software, and to
//# permit persons to whom the Software is furnished to do so, subject to
//# the following conditions:
//# 
//# The above copyright notice and this permission notice shall be
//# included in all copies or substantial portions of the Software.
//# 
//# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//# 
//
//require "rubygems"
//
//# lgremote requires the following gems
//require "dnssd"
//require "patron"
//require "fsdb"
//require "highline/import"
//
//require "socket"
//require "zlib"
//require "timeout"
		public class Hash{
//			class Hash
//  # def + hash1, hash2
//  #   hash1.merge hash2
//  # end
//  def + hash
//    merge hash
//  end
//end
//
		}

//module LgRemote
//  module ActiveSupport
//    # <tt></tt>
//    #   ActiveSupport::OrderedHash
//    #   
//    #   Copyright (c) 2005 David Hansson, 
//    #   Copyright (c) 2007 Mauricio Fernandez, Sam Stephenson
//    #   Copyright (c) 2008 Steve Purcell, Josh Peek
//    #   Copyright (c) 2009 Christoffer Sawicki
//    #   
//    #   Permission is hereby granted, free of charge, to any person obtaining
//    #   a copy of this software and associated documentation files (the
//    #   "Software"), to deal in the Software without restriction, including
//    #   without limitation the rights to use, copy, modify, merge, publish,
//    #   distribute, sublicense, and/or sell copies of the Software, and to
//    #   permit persons to whom the Software is furnished to do so, subject to
//    #   the following conditions:
//    #   
//    #   The above copyright notice and this permission notice shall be
//    #   included in all copies or substantial portions of the Software.
//    #   
//    #   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//    #   EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//    #   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//    #   NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//    #   LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//    #   OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//    #   WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//    #
//    class OrderedHash < Hash
		public class OrderedHash:Hash{
      public void initialize(*args, &block)
        //super *args, &block
        @keys = []
		}

      def self.[](*args)
        ordered_hash = new

        if (args.length == 1 && args.first.is_a?(Array))
          args.first.each do |key_value_pair|
            next unless (key_value_pair.is_a?(Array))
            ordered_hash[key_value_pair[0]] = key_value_pair[1]
          end

          return ordered_hash
        end

        if (args.first.is_a?(Hash))
          args.each do |h|
            next unless (h.is_a?(Hash))
            h.each do |k,v|
              ordered_hash[k] = v
            end
          end
          return ordered_hash
        end

        unless (args.size % 2 == 0)
          raise ArgumentError.new("odd number of arguments for Hash")
        end

        args.each_with_index do |val, ind|
          next if (ind % 2 != 0)
          ordered_hash[val] = args[ind + 1]
        end

        ordered_hash
      end

      def initialize_copy(other)
        super
        # make a deep copy of keys
        @keys = other.keys
      end

      def store(key, value)
        @keys << key if !has_key?(key)
        super
      end

      def []=(key, value)
        @keys << key if !has_key?(key)
        super
      end

      def delete(key)
        if has_key? key
          index = @keys.index(key)
          @keys.delete_at index
        end
        super
      end

      def delete_if
        super
        sync_keys!
        self
      end

      def reject!
        super
        sync_keys!
        self
      end

      def reject(&block)
        dup.reject!(&block)
      end

      def keys
        (@keys || []).dup
      end

      def values
        @keys.collect { |key| self[key] }
      end

      def to_hash
        self
      end

      def to_a
        @keys.map { |key| [ key, self[key] ] }
      end

      def each_key
        @keys.each { |key| yield key }
      end

      def each_value
        @keys.each { |key| yield self[key]}
      end

      def each
        @keys.each {|key| yield [key, self[key]]}
      end

      alias_method :each_pair, :each

      def clear
        super
        @keys.clear
        self
      end

      def shift
        k = @keys.first
        v = delete(k)
        [k, v]
      end

      def merge!(other_hash)
        other_hash.each {|k,v| self[k] = v }
        self
      end

      def merge(other_hash)
        dup.merge!(other_hash)
      end

      # When replacing with another hash, the initial order of our keys must come from the other hash -ordered or not.
      def replace(other)
        super
        @keys = other.keys
        self
      end

      def inspect
        "#<OrderedHash #{super}>"
      end

    private

      def sync_keys!
        @keys.delete_if {|k| !has_key?(k)}
      end
    end
  end
end

module LgRemote
  if RUBY_VERSION >= '1.9'
    # Inheritance
    #   Ruby 1.9 < Hash
    #   Ruby 1.8 < ActiveSupport::OrderedHash
    class OrderedHash < ::Hash
    end
  else
    # Inheritance
    #   Ruby 1.9 < Hash
    #   Ruby 1.8 < ActiveSupport::OrderedHash
    class OrderedHash < LgRemote::ActiveSupport::OrderedHash
    end
  end
end

$menus = LgRemote::OrderedHash[
  :status_bar, 35,
  :quick_menu, 69,
  :home_menu, 67,
  :premium_menu, 89,
  :installation_menu, 207,
  :factory_advanced_menu1, 251,
  :factory_advanced_menu2, 255,
]

$power_controls = LgRemote::OrderedHash[
  :power_off, 8,
  :sleep_timer, 14,
]

$navigation = LgRemote::OrderedHash[
  :left, 7,
  :right, 6,
  :up, 64,
  :down, 65,
  :select, 68,
  :back, 40,
  :exit, 91,
  :red, 114,
  :green, 113,
  :yellow, 99,
  :blue, 97,
]

$keypad = LgRemote::OrderedHash[
  :"0", 16,
  :"1", 17,
  :"2", 18,
  :"3", 19,
  :"4", 20,
  :"5", 21,
  :"6", 22,
  :"7", 23,
  :"8", 24,
  :"9", 25,
  :underscore, 76,
]

$playback_controls = LgRemote::OrderedHash[
  :play, 176,
  :pause, 186,
  :fast_forward, 142,
  :rewind, 143,
  :stop, 177,
  :record, 189,
]

$input_controls = LgRemote::OrderedHash[
  :tv_radio, 15,
  :simplink, 126,
  :input, 11,
  :component_rgb_hdmi, 152,
  :component, 191,
  :rgb, 213,
  :hdmi, 198,
  :hdmi1, 206,
  :hdmi2, 204,
  :hdmi3, 233,
  :hdmi4, 218,
  :av1, 90,
  :av2, 208,
  :av3, 209,
  :usb, 124,
  :slideshow_usb1, 238,
  :slideshow_usb2, 168,
]

$tv_controls = LgRemote::OrderedHash[
  :channel_up, 0,
  :channel_down, 1,
  :channel_back, 26,
  :favorites, 30,
  :teletext, 32,
  :t_opt, 33,
  :channel_list, 83,
  :greyed_out_add_button?, 85,
  :guide, 169,
  :info, 170,
  :live_tv, 158,
]

$picture_controls = LgRemote::OrderedHash[
  :av_mode, 48,
  :picture_mode, 77,
  :ratio, 121,
  :ratio_4_3, 118,
  :ratio_16_9, 119,
  :energy_saving, 149,
  :cinema_zoom, 175,
  :"3d", 220,
  :factory_picture_check, 252,
]

$audio_controls = LgRemote::OrderedHash[
  :volume_up, 2,
  :volume_down, 3,
  :mute, 9,
  :audio_language, 10,
  :sound_mode, 82,
  :factory_sound_check, 253,
  :subtitle_language, 57,
  :audio_description, 145,
]

$keymap = \
  $menus + $power_controls + \
  $navigation + $keypad + $playback_controls + \
  $input_controls + $tv_controls + \
  $picture_controls + $audio_controls

$keymap_strings = LgRemote::OrderedHash[
  "Menus",              $menus,
  "Power controls",     $power_controls,
  "Navigation",         $navigation,
  "Keypad",             $keypad,
  "Playback controls",  $playback_controls,
  "Input controls",     $input_controls,
  "TV controls",        $tv_controls,
  "Picture controls",   $picture_controls,
  "Audio controls",     $audio_controls
]

labels_array = $keymap_strings.map do |s,h|
  [s.downcase.tr(" ","_").to_sym,h]
end
$keymap_labels = Hash[labels_array]

def create_session lgtv
  $sess = Patron::Session.new
  $sess.timeout  = 5.0
  $sess.base_url = "http://#{lgtv[:address]}:8080"
  $headers = {"Content-Type" => "application/atom+xml" }
end

def load_config_open_session
  unless File.exist?($lgremote_config)
    print "Config files missing. Please pair with \"lgremote pair\"\n\n"
    help
    exit 1
  end

  $db = FSDB::Database.new($lgremote_config)
  $lgtv = $db[$db["default"]]
  # puts $lgtv.inspect

  create_session $lgtv
end

def reconnect failed_resp
  # puts "error"
  # puts failed_resp.body
  # <?xml version="1.0" encoding="utf-8"?><envelope><HDCPError>401</HDCPError><HDCPErrorDetail>Unauthorized</HDCPErrorDetail></envelope>
  error_detail = failed_resp.body.gsub(/.*<HDCPErrorDetai>/,"").gsub(/<\/HDCPErrorDetai>.*/,"")
  if error_detail.downcase =~ /unauthorized/
    resp = $sess.post("/hdcp/api/auth","<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthReq</type><value>#{$lgtv[:pairing_key]}</value></auth>",$headers)
    if resp.status == 200
      # Obtain session number
      session = resp.body.gsub(/.*<session>/,"").gsub(/<\/session>.*/,"")
      if session =~ /[0-9]{9}/
        # puts "Connection re-established."
        # store information for next invocation
        $lgtv[:session] = session
        $db["#{$lgtv[:address]}"] = $lgtv # save
        # puts "Session saved."
      end
      return true
    else
      raise "Session timed out. But we failed to re-establish a connection."
    end
  else
    raise failed_resp.body
  end
end

def event name, value=nil
  if value
    resp = $sess.post("/hdcp/api/event","<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>#{$lgtv[:session]}</session><name>#{name}</name><value>#{value}</value></event>",$headers)
  else
    resp = $sess.post("/hdcp/api/event","<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>#{$lgtv[:session]}</session><name>#{name}</name></event>",$headers)
  end

  if resp.status == 200
    # puts resp.body
    # <?xml version="1.0" encoding="utf-8"?><envelope><HDCPError>200</HDCPError><HDCPErrorDetail>OK</HDCPErrorDetail><session>114859659</session></envelope>
  else
    reconnect resp
    event name, value
  end
end

def change_channel assigned_no, real_no, uhf_no
  # The 3 parameters must match and agree with whats currently stored in the memory of the TV
  # otherwise we get a blank screen. Problem is the API doesnt let us query such information.
  # Note: If you add all your channels to one of the favorites group, we could download them.
  # But information would go stale whenever the user chooses to update their channel mappings.
  # "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>483166968</session><type>HandleChannelChange</type><major>7</major><minor>7</minor><sourceIndex>1</sourceIndex><physicalNum>34</physicalNum></command>"
  resp = $sess.post("/hdcp/api/dtv_wifirc","<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>#{$lgtv[:session]}</session><type>HandleChannelChange</type><major>#{assigned_no}</major><minor>#{real_no}</minor><sourceIndex>1</sourceIndex><physicalNum>#{uhf_no}</physicalNum></command>",$headers)
  if resp.status == 200
    puts resp.body
    # <?xml version="1.0" encoding="utf-8"?><envelope><HDCPError>200</HDCPError><HDCPErrorDetail>OK</HDCPErrorDetail><session>114859659</session></envelope>
  else
    reconnect resp
    change_channel assigned_no, real_no
  end
end

# def get_favorites
#   # Returns information about channels in the favorites groups A,B,C,D
#   # GET /hdcp/api/data?target=fav_list&session=1664204142
#   resp = $sess.get("/hdcp/api/data?target=fav_list&session=#{$lgtv[:session]}",$headers)
#   if resp.status == 200
#     resp.body
#   else
#     reconnect resp
#     get_favorites
#   end
# end

# def get_model_name
#   # GET "/hdcp/api/data?target=model_info&session="
#   resp = $sess.get("/hdcp/api/data?target=model_info&session=#{$lgtv[:session]}",$headers)
#   if resp.status == 200
#     resp.body.gsub(/.*<modelName>/,"").gsub(/<\/modelName>.*/,"")
#   else
#     reconnect resp
#     get_model_info
#   end
# end

# def get_cur_channel
#   # Gives invalid data when in menus, or external input (eg HDMI)
#   # GET "/hdcp/api/data?target=cur_channel&session="
#   resp = $sess.get("/hdcp/api/data?target=cur_channel&session=#{$lgtv[:session]}",$headers)
#   if resp.status == 200
#     resp.body
#   else
#     reconnect resp
#     get_cur_channel
#   end
# end

def cursor_show
  event "CursorVisible", true
end

def reverse_2bytes hexstr
  hexstr[2..3]+hexstr[0..1]
end

def reverse_4bytes hexstr
  hexstr[6..7]+hexstr[4..5]+hexstr[2..3]+hexstr[0..1]
end

def prepare_2bytes uint16_value
  # We wrap integers in an array [] so we can perform binary conversions.
  # See Ruby's Array.pack() method for an explanation. A simple example:
  # data << [0].pack("N*").unpack("H*")
  reverse_2bytes [uint16_value].pack("n*").unpack("H*").first
end

def prepare_4bytes uint32_value
  # We wrap integers in an array [] so we can perform binary conversions.
  # See Ruby's Array.pack() method for an explanation. A simple example:
  # data << [0].pack("N*").unpack("H*")
  reverse_4bytes [uint32_value].pack("N*").unpack("H*").first
end

def craft_packet cmd0, cmd1, byte0, byte1=nil, byte2=nil, str=nil
  # UDP packets captured with wireshark.
  # Just type "udp.port == 7070" into the filter box.

  # <------------   UDP Payload 18, 22, or 26 bytes   -------------->
  # 1) Original Message
  # uint32      uint32     uint16 uint32      uint32      uint32      uint32
  # <---------> <---------> <---> <---------> <---------> <---------> <--------->
  # 00:00:00:00 54:13:43:65 02:00 08:00:00:00 00:00:00:00 04:00:00:00 04:00:00:00
  # <---------> <---------> <---> <---------> <---------> <---------> <--------->
  # Zero-pad    session     cmd1  cmd2        data1       data2*      data3*
  # 
  # * The data2 and data3 are optional extra arguments

  # Each *individual* fields are little endian (LSB first --> MSB last)
  # Its not as simple as the expected network native big endian.
  # We must reverse each individual field from the Network order.
  # So for example cmd1 "02:00" is actually (uint16)0x02
  #           and  cmd2 "08:00:00:00"   ==  (uint32)0x08

  # 2) Final Message with crc32 checksum filled in.
  #    Where "crc32" field = crc32() of zero-padded Message 1) above
  # 03:14:6b:6d 54:13:43:65 02:00 08:00:00:00 00:00:00:00 04:00:00:00
  # <---------> <---------> <---> <---------> <---------> <--------->
  # crc32       session     cmd1  cmd2        data1       data2*
  # 
  # Final UDP packet
  # "03:14:6b:6d:54:13:43:65:02:00:08:00:00:00 00:00:00:00 04:00:00:00"
  
  data = []

  data << "00000000"                                # Zero-pad
  data << prepare_4bytes( $lgtv[:session].to_i )    # session

  data << prepare_2bytes( cmd0  )                   # cmd1
  data << prepare_4bytes( cmd1  )                   # cmd2

  data << prepare_4bytes( byte0 )                   # data1
  
  if byte1 || byte2
    data << prepare_4bytes( byte1 ) if byte1        # data2
    data << prepare_4bytes( byte2 ) if byte2        # data3

  elsif str
    # For text input mode, there is no data2, data3.
    # Instead we (re-)update the whole textbox. With a variable-length ASCII string
    # f1:db:b2:5d 91:76:f6:15 09:00 0d:00:00:00 01:00:00:00 74:6f:74:6f:74:6f:74 00:00
    #                                                       t  0  t  0  t  0  t  \0 \0
    data << str.unpack("H*").first
    data << ["0000"].pack("H*") # trailing NULLs [0x00, 0x00]
  end

  # Before checksum
  # puts "data = #{data.to_s}"

  crc32 = Zlib::crc32(["#{data}"].pack('H*'))
  data[0]=prepare_4bytes( crc32                )    # crc32

  # After checksum
  # puts "data = #{data.to_s.inspect}"

  bytes = ["#{data}"].pack('H*')
  return bytes
end

def send_packet bytes
  # puts bytes
  sock = UDPSocket.new
  sock.send(bytes, 0, $lgtv[:address], 7070)
  sock.close
end

def move_mouse px, py
  cursor_show
  cmd = [2,8] # move mouse
  bytes = craft_packet( cmd[0], cmd[1], px, py) 
  i = 0
  n = 4
  while i < n
    send_packet bytes
    i += 1
    sleep 0.1
  end
end

def click_mouse
  cursor_show
  cmd = [3,4]
  bytes = craft_packet(cmd[0],cmd[1], 0x02)
  send_packet bytes
end

def enter_text str
  # cmd = [ 9, 6 + str.size ]
  # cmd = [ 9, 8 + str.size ]
  cmd = [ 9, str.size ]
  bytes = craft_packet( cmd[0],cmd[1], 0x01, nil, nil, str )
  send_packet bytes
end

class String
  # Remove the leading spaces of the first line, and same to all lines of a multiline string.
  # This effectively shifts all the lines across to the left, until the first line hits the 
  # left margin.
  # @example
  #   def usage; <<-EOS.undent
  #     # leading indent
  #     # subsequent indent
  #        # subsequent indent + '  '
  #     EOS
  #   end
  def undent
    gsub /^.{#{slice(/^ +/).length}}/, ''
  end
end

$cmd = "$ #{File.basename $0}"

def usage
  <<-EOS.undent
  Usage:
     #{$cmd} <cmd> <args>
  
  Interactive pairing
     #{$cmd} pair
  
  Display pairing key
     #{$cmd} pair 192.168.1.2
  
  Enter pairing key
     #{$cmd} pair 192.168.1.2 AAABBB
  
  Show all buttons
     #{$cmd} press
  
  Show all buttons in group "Menus"
     #{$cmd} press menus
  
  Press button
     #{$cmd} press volume_up
     #{$cmd} press volume_down
  
  Move mouse by 1 increment
     #{$cmd} mouse up
     #{$cmd} mouse down
     #{$cmd} mouse left
     #{$cmd} mouse right
  
  Move mouse by +- {x,y} pixels
     #{$cmd} mouse -25 0
  
  Interactive text entry (tab updates)
     #{$cmd} keyboard
  
  Non-interactive text entry
     #{$cmd} keyboard text_string
    
  EOS
end

def help
  puts usage
end

def bad_arg arg
  print "Unrecognised argument #{arg.inspect}.\n\n"
  help
end

def missing_arg_after arg
  print "Missing argument after #{arg}.\n\n"
  puts usage
end

class DNSSD::Reply::Browse < DNSSD::Reply
  attr_reader :addresses
  attr_reader :address

  def resolve!
    reply = self
    @addresses = []
    resolver = DNSSD.resolve! reply.name, reply.type, 'local' do |reply|
      service = DNSSD::Service.new

      service.getaddrinfo reply.target do |addrinfo|
        @addresses << addrinfo.address
        break unless addrinfo.flags.more_coming?
      end
      break
    end
    @address = @addresses.first
  end

  def inspect
    return "#{name} #{address} (#{name}.#{type}.#{domain.chop})"
  end
end

class DNSSD::Service
  def self.find service, timeout=2.0
    browser = DNSSD::Service.new
    replies = []
    begin
      Timeout::timeout(timeout) do
        browser.browse service do |reply|
          reply.resolve!
          replies << reply
        end
      end
    rescue Timeout::Error
    rescue
    end
    return replies
  end
end

def pair_show_pairing_key lgtv
  create_session lgtv
  resp = $sess.get("/hdcp/api/data?target=version_info",$headers)
  if resp.status == 200
    resp = $sess.post("/hdcp/api/auth","<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthKeyReq</type></auth>",$headers)
    if resp.status == 200
      # puts resp.body
      # If xml contains nodes HDCPError=200 && HDCPErrorDetail=OK
      # This means the Pairing key is currently being displayed on the TV
      db = FSDB::Database.new($lgremote_config)
      db["#{lgtv[:address]}"] = lgtv
      db["default"] = lgtv[:address]
      say "Success"
      say "A 6-digit pairing key should be displayed on your TV"
      say "Session saved."
    end
  else
    raise resp.body
  end
end

def pair_with_lgtv lgtv
  create_session lgtv
  resp = $sess.post("/hdcp/api/auth","<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthReq</type><value>#{lgtv[:pairing_key]}</value></auth>",$headers)
  if resp.status == 200
    # Obtain session number
    session = resp.body.gsub(/.*<session>/,"").gsub(/<\/session>.*/,"")
    if session =~ /[0-9]{9}/
      lgtv[:session] = session
      lgtv[:mouse_last_moved] = Time.new
      say "Pairing successful"

      # store information for next invocation
      db = FSDB::Database.new($lgremote_config)
      db["#{lgtv[:address]}"] = lgtv
      db["default"] = lgtv[:address]
      say "Session saved."
    end
  else
    puts "Pairing failed."
    puts "<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthReq</type><value>#{pairing_key}</value></auth>"
    puts resp.body
  end
end

def pair_interactive
  timeout=1.0
  replies = DNSSD::Service.find("_lg_dtv_wifirc._tcp",timeout)

  # for testing multiple TVs selection list
  # replies << replies.first.dup
  # replies << replies.first.dup

  case replies.size
  when 0
    say "No LG Smart TVs were found on your network."
    say "Please check that:"
    say "TV model is actually labelled as an LG \"SMART\" TV *"
    say "TV is switched on and NOT stuck in the menu."
    say "Both computer + TV are on the same LAN segment."
    say "uPNP is enabled on the local router."
    say " * Not all of LG's DLNA capable TVs are Smart TVs."

  when 1
    puts "One TV found"
    puts replies.first.inspect

  else
    puts replies.first.inspect
    match = agree("Is this your TV?  ", true)

    unless match
      puts "#{replies.size} TVs found."

      choice = choose do |menu|
        menu.prompt = "Which TV do you wish to pair?"

        replies.each do |reply|
          menu.choice reply.inspect
        end
      end

      say "You chose:"
      say choice.inspect
      exit unless agree("Continue?", true)

      replies.delete(choice)
      replies.insert(0,choice)
    end
  end

  r = replies.first
  replies.drop(1)
  lgtv = { :name => r.name, :address => r.address }

  pair_show_pairing_key lgtv

  # Gather user input
  # Obtain the pairing key from the user
  pairing_key = nil
  pairing_key_timeout = 60.0
  begin
    Timeout::timeout(pairing_key_timeout) do
      lgtv[:pairing_key] = ask("Please enter the 6-letter pairing key, as displayed on the TV:") { |q| q.validate = /[a-zA-Z]{6}/ }.upcase
    end
  rescue Timeout::Error
    "Timeout."
    exit
  rescue
    exit
  end
  pair_with_lgtv lgtv
end

def pair args
  # pair
  # pair 192.168.1.2
  # pair 192.168.1.2 AAABBB
  case args[0]
  when nil
    # interactive bonjour
    pair_interactive
  when /^(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})?$/
    # ip address given
    case args[1]
    when nil
      pair_show_pairing_key :name => "LG Smart TV", :address => args[0]
    when /[a-zA-Z]{6}/
      # ip address + pairing key given
      pair_with_lgtv  :name => "LG Smart TV", :address => args[0], :pairing_key => args[1].upcase
    else
      bad_arg args[1]
    end
  else
    bad_arg args[0]
  end
end

def press_udp key
  # eg
  # volume UP   = 0x02
  # f3:b1:cb:9e 33:a8:89:5b 01:00 04:00:00:00 02:00:00:00
  # volume DOWN = 0x03
  # 96:d6:77:26 33:a8:89:5b 01:00 04:00:00:00 03:00:00:00
  cmd = [1,4]
  bytes = craft_packet( cmd[0],cmd[1], key.to_i )
  send_packet bytes
end

def press_tcp key
  # key = lookup(key)
  resp = $sess.post("/hdcp/api/dtv_wifirc","<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>#{$lgtv[:session]}</session><type>HandleKeyInput</type><value>#{key}</value></command>",$headers)
  if resp.status == 200
    resp.body
  else
    reconnect resp
    press key
  end
end

def show_keymap label=nil
  if label
    $keymap_strings.each do |l, h|
      if label == l.downcase.tr(" ","_").to_sym
        print "#{l}:\n  "
        puts h.keys.join("\n  ")
      end
    end
  else
    $keymap_strings.each do |label, keymap|
      print "#{label}:\n  "
      puts keymap.keys.join("\n  ")
      print "\n"
    end
  end
end

def press args
  # press quick_menu
  # press mute
  case args[0]
  when nil, "help"
    # print list of available commands
    show_keymap
  else
    label = args.join("_").downcase.to_sym
    if $keymap_labels.keys.include?(label)
      show_keymap label
    else
      if $keymap.keys.include?(label)
        press_tcp $keymap[label]
      else
        bad_arg args[0]
        show_keymap
      end
    end
  end
end

def keyboard args
  # keyboard
  # keyboard "text input"
  reconnect
  if args[0]
    puts args.inspect
    enter_text args.join(" ")
  else
    require 'readline'
    Readline.basic_word_break_characters=""
    Readline.completion_proc = proc{ |s| enter_text(s); nil }
    buf = Readline.readline("Enter text:  ", true)
    enter_text buf
  end
end

$incr = 0
def calc_incr
  if (Time.new - $lgtv[:mouse_last_moved]) > $mouse_incr_reset_thr
    $incr = $mouse_move_start_incr
  else
    # This should be limited
    $incr = ($lgtv[:mouse_move_incr] * $mouse_incr_multiplier).to_i
  end
  $lgtv[:mouse_move_incr] = $incr
  $lgtv[:mouse_last_moved] = Time.new
  $db["#{$lgtv[:address]}"] = $lgtv # save
end

def mouse args
  # mouse up
  # mouse down
  # mouse left
  # mouse right
  # mouse -25 0
  case args[0]
  when nil
    missing_arg_after "mouse"
  when /^[+-]?[0-9]$/
    missing_arg_after args[0] unless args[1]
    case args[1]
    when /^[+-]?[0-9]$/
      move_mouse args[0], args[1]
    else
      bad_arg args[1]
    end
  else
    calc_incr
    case args[0].to_sym
    when :show
      move_mouse(0,0)
    when :left
      move_mouse(-$incr,0)
    when :right
      move_mouse(+$incr,0)
    when :up
      move_mouse(0,-$incr)
    when :down
      move_mouse(0,+$incr)
    when :click
      click_mouse
    else
      bad_arg args[0]
    end
  end
end

class NilClass
  def to_sym
    :nil
  end
end

def main_loop
  valid_cmds = [:pair, :press, :mouse, :keyboard]
  $args = ARGV.dup
  if $args[0]
    first_arg = $args[0].downcase.to_sym
    if valid_cmds.include?(first_arg)
      load_config_open_session unless first_arg == :pair
      send $args[0].downcase.to_sym, $args.dup.drop(1)
    else
      bad_arg $args[0]
    end
  else
    puts usage
  end
end

# Execute main loop
main_loop
	}
}

