begin
  defaults = YAML.load_file("#{Rails.root}/config/seeds.yml")
  SEED_USERS = defaults['users']
rescue Errno::ENOENT, Psych::SyntaxError
  Rails.logger.error 'An error occured while loading defaults.yml'
end
SEED_USERS ||= []
