require 'compass'

# Require any additional compass plugins here.
require 'sass'
require 'sassy-buttons'

# Get the directory that this configuration file exists in
dir_src = File.dirname(__FILE__)

# Set this to the root of your project when deployed:
http_path = "/"
project_path = File.join(dir_src, "/", "")

sass_dir = "src/sass"
sass_path = dir_src

css_dir = "css"
css_path  = File.join(dir_src, "app/", "css")

images_dir = "img"
images_path  = File.join(dir_src, "app/", "img")

javascripts_dir = "js"
javascripts_path  = File.join(dir_src, "app/", "js")

#Environment
#environment = :development

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
preferred_syntax = :sass

# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
debug_info = true
