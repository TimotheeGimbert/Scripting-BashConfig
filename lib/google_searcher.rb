def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?
end

def perform
  check_if_user_gave_input
end

perform