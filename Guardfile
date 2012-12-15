# More info at
# https://github.com/guard/guard#readme
# https://github.com/guard/guard/wiki/Guardfile-examples

# Launch Guard like this: [bundle exec] guard -g ui

group :ui do

  guard :bundler,
    :hide_success => true do
    watch('Gemfile')
  end

  guard 'coffeescript',
    :output => 'app/js',
    :hide_success => true do
    watch('src/coffee/(.*)\.coffee')
  end

  guard 'coffeescript',
    :output => 'spec/javascripts',
    :hide_success => true do
    watch('spec/coffeescripts/(.*)\.coffee')
  end

  # guard 'jasmine-headless-webkit',
  #   :output => 'spec/javascripts/',
  #   :colors => true,
  #   :report => false do
  #   watch('spec/coffeescripts/(.*)\_spec.coffee')
  # end

  guard 'compass',
    :output => 'app/css',
    :workdir => 'src/sass',
    :configuration_file => 'config/compass.rb',
    :hide_success => true do
    watch('src/sass/(.*)\.sass')
  end

  guard 'haml',
    :input => 'src/haml',
    :output => 'app/htm',
    :hide_success => true do
    watch('src/haml/(.*)\.haml')
  end

  guard 'webrick',
    :host => '127.0.0.1',
    :port => '3000',
    :docroot => 'app/htm/' do
  end

  guard 'livereload',
    :grace_period => 0,
    :apply_js_live => true,
    :apply_css_live => true,
    :apply_htm_live => true do
    watch('app/img/(.*)\.png')
    watch('app/js/(.*)\.js')
    watch('app/css/(.*)\.css')
    watch('app/htm/(.*)\.htm')
  end

end
