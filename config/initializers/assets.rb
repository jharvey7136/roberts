# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Adding Webfonts to the Asset Pipeline
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/

# Rails.application.config.assets.precompile += %w( application.css application.js )

Rails.application.config.assets.precompile += %w( side-nav.css )
Rails.application.config.assets.precompile += %w( side-nav.js )


Rails.application.config.assets.precompile += %w( skrollr.css )
Rails.application.config.assets.precompile += %w( skrollr/imagesloaded.js )
Rails.application.config.assets.precompile += %w( skrollr/skrollr.js )
Rails.application.config.assets.precompile += %w( skrollr/_main.js )
#Rails.application.config.assets.precompile += %w( leaflet-map.js )




