Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_watermark'
  s.version     = '0.50.1'
  s.summary     = 'adds watermarking to incoming product images'
  s.description = 'Adds watermarking to incoming product images'
  s.required_ruby_version = '>= 1.9.2'
  s.author            = 'Christopher Maujean'
  s.email             = 'christopher@azimuthonline.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency('spree_core', '>= 0.50.0')
end
