Image.class_eval do
  has_attached_file(
    :attachment,
    :processors => [:thumbnail, :watermark],
    :styles => {
      :mini => {
        :geometry => '48x48>',
        :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/tiny.png",
        :watermark_position => "SouthWest",
        :format => :png,
      },
      :small => {
        :geometry => '100x100>',
        :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/small.png",
        :watermark_position => "SouthWest",
        :format => :png,
      },
      :product => {
        :geometry => '240x240>',
        :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/product.png",
        :watermark_position => "SouthWest",
        :format => :png,
      },
      :large => {
        :geometry => '600x600>',
        :watermark_path => "#{Rails.root.to_s}/public/images/watermarks/large.png",
        :watermark_position => "SouthWest",
        :format => :png,
      },
    }, 
    :default_style => :product,
    :url => "/assets/products/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
    )
end
