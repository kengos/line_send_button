# LineSendButton

http://about.naver.jp/press/press_detail?docId=1976

## Installation

Add this line to your application's Gemfile:

    gem 'line_send_button'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install line_send_button

## Usage


### naver_line_send_link(message, url = nil, options = {}, html_options = {}, image_options = {})

```ruby
<%= naver_line_send_link('foo') %>
# => <a href="http://line.naver.jp/R/msg/text/?foo"><img alt="LINEで送る" height="60" src="/assets/linebutton_36x60.png" width="36" /></a>
```

call

```ruby
link_to(naver_line_send_url(message, url), options, html_options) do
  naver_line_send_image_tag(image_options)
end
```

### naver_line_send_url(message, url = nil)

```ruby
<%= naver_line_send_url('bar') %>
# => http://line.naver.jp/R/msg/text/?bar
```

### naver_line_send_image_tag(options = {})

```ruby
<%= naver_line_send_image_tag %>
# => <img alt="LINEで送る" height="60" src="/assets/linebutton_36x60.png" width="36" />
<%= naver_line_send_image_tag(:size => '20x20') %>
# => <img alt="LINEで送る" height="20" src="/assets/linebutton_20x20.png" width="20" />
```

* size option ... `20x20`, `30x30`, `36x60`(default), '40x40', '86x20'


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
