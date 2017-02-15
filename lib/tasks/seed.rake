namespace :gap do

  desc 'Seeds database'
  task 'seed' => :environment do |t, args|
    # Admins
    puts 'Creating default users...'
    SEED_USERS.each do |user|
      User.where(email: user['email'], admin: true).first_or_create
    end
    puts 'Users created'

  end
end
