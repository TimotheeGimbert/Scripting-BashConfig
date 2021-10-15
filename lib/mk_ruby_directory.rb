# Creation of the README.md file
readme = File.open('./README.md', 'w')
  readme.puts('Ruby programms can be found in the lib/ directory, and can be load with the command ruby')
  readme.puts('For these programms to run correctly, do not forget to make a "bundle install" to automatically load the required gems.')
  readme.puts('The testing programms associated with lib/ content, are located in the spec/ directory and can be load with the command rspec')
readme.close

# Creation of the Gemfile with custom default ruby gems
gemfile = File.open('./Gemfile', 'w')
  gemfile.puts("source 'https://rubygems.org'")
  gemfile.puts("ruby '2.7.4'")
  gemfile.puts("gem 'rspec'")
  gemfile.puts("gem 'nokogiri'")
  gemfile.puts("gem 'open-uri'")
  #gemfile.puts("gem 'rubocop'")
  #gemfile.puts("gem 'rubocop-rspec'")
  #gemfile.puts("gem 'dotenv'") # to store sensible local environment variables 
gemfile.close

# Creation of the lib/ directory that holds ruby programms
Dir.mkdir('lib')

# Creation of the spec/ directory that holds ruby testing programms
Dir.mkdir('spec')

system('bundle install')

system('rspec --init')