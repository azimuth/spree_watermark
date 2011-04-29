SpreeWatermark
==============

This adds a watermarking processor to spree product images.
When the image is processed by paperclip, it will also be watermarked 
with the watermark images (if it exists) located at `public/images/watermarks/` 
named for the image size (large.png, product.png, small.png, tiny.png).

Install
=======

Add `gem 'spree_watermark'` to your gem file and place your watermark images
in `public/images/watermarks/`

NOTE: BY DEFAULT, THIS WILL FORCE ALL OF YOUR ASSETS INTO PNG. YOU WILL
NEED TO CUSTOMIZE AS BELOW TO CHANGE THIS BEHAVIOUR.

Customization
=============

Override `app/models/image_decorator.rb` in your main app and plug in your own `has_attached_file` call.


Copyright (c) 2011 Azimuth Internet Services & Christopher Maujean, released under the New BSD License
