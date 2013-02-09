
# Setup

$ bundle gem xkcd_password

gemspec >> add_development_dependency "rspec"

$ bundle install

$ rspec --init

$ touch lib/xkcd_password/generator.rb

$ mkdir -p spec/lib/xkcd_password

$ touch spec/lib/xkcd_password/generator_spec.rb

# Integration test

$ mkdir spec/integration/
$ touch spec/integration/output_password_spec.rb

# Create the binary

$ mkdir bin
$ touch bin/xkcd_password
$ chmod 755 bin/xkcd_password


