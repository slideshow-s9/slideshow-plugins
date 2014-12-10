# encoding: utf-8

module Slideshow
  module SnippetsHelper


def help()
  puts "  Adding HTML for Slide Show help instructions..."

  text = <<EOS
**Slide Show Keyboard Controls (Help)**

| Action | Key       |
| :----- | :-------- |
| Go to next slide | Space Bar, Right Arrow, Down Arrow, Page Down, Click Heading |
| Go to previous slide | Left Arrow, Up Arrow, Page Up |
| Toggle between slideshow and outline view (Ø) | T |
| Show/hide slide controls (Ø  « ») | C, Move mouse to bottom right corner |
| Zoom in, zoom out, zoom reset (100%)  | Control+Plus, Control+Minus, Control+0 |
EOS

  html = <<EOS
<!-- begin help -->
<div class='help projection'>
#{markdown_to_html( text )}
</div>
<!-- end help -->
EOS

  guard_block( html )
end


  end # module SnippetsHelper
end # module Slideshow


class Slideshow::Gen
  include Slideshow::SnippetsHelper
end