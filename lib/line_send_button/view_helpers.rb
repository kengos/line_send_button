# coding: utf-8
require 'cgi'

module LineSendButton
  module ViewHelpers
    def naver_line_send_link(title, url = nil, options = {}, html_options = {}, image_options = {})
      link_to(naver_line_send_url(title, url), options, html_options) do
        naver_line_send_image_tag(image_options)
      end
    end

    def naver_line_send_url(message, url = nil)
      'http://line.naver.jp/R/msg/text/?' + CGI.escape(message.tap{|m| m + "\r\n" + url if url})
    end

    def naver_line_send_image_tag(options = {})
      options = {:size => '36x60', :alt => 'LINEで送る'}.merge options
      case options[:size]
      when "20x20", "30x30", "36x60", "40x40", "86x20"
        file = options[:size]
      else
        file = "36x60"
      end
      image_tag "linebutton_#{file}.png", options
    end
  end
end