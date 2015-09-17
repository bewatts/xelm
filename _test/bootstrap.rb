require 'json'

config_file = File.read('config.json')

config = JSON.parse(config_file)

config["problems"].each do |problem_name|
  # e.g. problem_name = "Leap"
  problem_dir = problem_name
  old_name = "#{problem_dir}/#{problem_name}Example.elm"
  new_name = "#{problem_dir}/#{problem_name}.elm"
  File.rename(old_name, new_name)
end
