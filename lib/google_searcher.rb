require 'launchy'

def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?
end
 

def get_url_from_ARGV(argv_array)
  search_str = argv_array.join('+')
  url = search_str.prepend('https://google.com/search?q=')
  return url
end

def perform
  check_if_user_gave_input
  url = get_url_from_ARGV(ARGV)
  Launchy.open(url)
end

perform