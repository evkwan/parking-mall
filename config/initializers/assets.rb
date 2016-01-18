# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
#Rails.application.config.assets.precompile += %w( cosmo.css )
#Rails.application.config.assets.precompile += %w( cosmo.js )
#Rails.application.config.assets.precompile += %w(*.svg *.eot *.woff *.ttf *.gif *.png *.ico)
#Rails.application.config.assets.precompile += [/.*\.js/,/.*\.css/]
Rails.application.config.assets.precompile += %w( malls_home.css )
Rails.application.config.assets.precompile += %w( cosmo.css )
Rails.application.config.assets.precompile += %w( malls_show.css )
Rails.application.config.assets.precompile += %w( cosmo.js )
