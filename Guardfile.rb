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
    :output => 'app/js/mylibs', 
    :bare => %w{ a.coffee }, 
    :hide_success => true do
    watch('src/coffee/mylibs/(.*)\.coffee')
  end
  
  guard 'coffeescript', 
    :output => 'spec/javascripts/mylibs',
    :hide_success => true do
    watch('spec/coffeescripts/mylibs/(.*)\.coffee')
  end
    
  #guard 'jasmine-headless-webkit' do
  #  watch('spec/coffeescripts/mylibs/(.*)\_spec.coffee') { |m| newest_js_file("spec/javascripts/mylibs/") }
  #end
  
  #guard "jstd" do
  #  watch(%r{spec/coffeescripts/mylibs/(.+)\.(js\.coffee|js)}) { |m| "spec/javascripts/mylibs/#{m[1]}_spec.#{m[2]}" }
  #end

  #Jstd.configure do |c|
  #  c.java_path = "tools/JsTestDriver-1.3.4.b.jar"
  #  c.browser_paths = "\`which open\`"
  #  c.jstd_config_path = 'jsTestDriver.conf'
  #  c.start_server = false
  #  c.capture_browser = false    # false is the default
  #end
 
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
    :apply_js_live => true, 
    :apply_css_live => true,
    :apply_htm_live => true do
    watch('app/js/.+\.js$')
    watch('app/css/.+\.css$')
    watch('app/htm/.+\.htm$')
  end

end
